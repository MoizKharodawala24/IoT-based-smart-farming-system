# **Water (Humidity) Sensor Output Legend:**
# * 0%: 0(0000); 10%: 1(0001); 20%: 2(0010);30%: 3(0011); 40%: 4(0100); 50%: 5(0101);
# * 60%: 6(0110); 70%: 7(0111); 80%: 13(1101); 90%: 14(1110); 100%: 15(1111)

# **Temperature Sensor Output Legend (in Celsius):**
# * <15: 0(000); 17.5: 1(001); 20: 2(010); 22.5: 3(011); 25: 4(100); 27.5: 5(101); 30: 6(110); 32.5: 7(111);

# * **SO**: Power is OFF (both pump and ac are closed)
# * **S1**: Default state (**pump** is ON and **ac** is OFF)
# * **S2**: Default state (**ac** is OFF)
# * **S3**: Default state (**ac** is Heating)
# * **S4**: Default state (**ac** is Cooling)
# * **S5**: Default state (**pump** is ON)
# * **S6**: Default state (**pump** is OFF)

# Since **S2-S4** and **S5-S6** states are independent. We register two state variable **state_water** and **state_temperature**

import pyrtl
pyrtl.reset_working_block()

start = pyrtl.Input(1, 'start')
reset = pyrtl.Input(1, 'reset')
water = pyrtl.Input(4, 'water')
temperature = pyrtl.Input(3, 'temperature')
pump = pyrtl.Output(1, 'pump')
ac = pyrtl.Output(2, 'ac')
state_water = pyrtl.Register(3, 'state_water') #S0 S1 S5 S6
state_temperature = pyrtl.Register(3, 'state_temperature') #S0 S1 S2 S3 S4

S0, S1, S2, S3, S4, S5, S6 = [pyrtl.Const(x, bitwidth=3) for x in range(7)]

with pyrtl.conditional_assignment:
    with start:  # power is ON
        with reset:  # system in reset
            state_water.next |= S1
            state_temperature.next |= S1
        with pyrtl.otherwise: # functioning
            with (state_water == S0): # if previous state_water is power OFF
                state_water.next |= S1
                with (state_temperature == S0):
                    state_temperature.next |= S1
            with (state_water == S1):
                state_water.next |= S5
                with (state_temperature == S1):
                    state_temperature.next |= S2
            with state_water == S5: # pump ON
                with water <= 14: # less than or equal to %90
                    state_water.next |= S5
                    with state_temperature == S2: #ac OFF
                        with temperature < 2: # less than 20
                            state_temperature.next |= S3
                        with temperature > 5: # higher than 27.5
                            state_temperature.next |= S4
                        with pyrtl.otherwise: # between 20 and 27.5
                            state_temperature.next |= S2
                    with state_temperature == S3: # heat untill 25
                        with temperature < 4: # less than 25
                            state_temperature.next |= S3
                        with temperature >= 4: # higher than or equal to 25
                            state_temperature.next |= S2
                    with state_temperature == S4: #cool untill 22.5
                        with temperature > 3: # higher than 22.5
                            state_temperature.next |= S4
                        with temperature <= 3: # less than or equal to 22.5
                            state_temperature.next |= S2
                with water > 14: # higher than %90
                    state_water.next |= S6
                    with state_temperature == S2: #ac OFF
                        with temperature < 2: # less than 20
                            state_temperature.next |= S3
                        with temperature > 5: # higher than 27.5
                            state_temperature.next |= S4
                        with pyrtl.otherwise: # between 20 and 27.5
                            state_temperature.next |= S2
                    with state_temperature == S3: # heat untill 25
                        with temperature < 4: # less than 25
                            state_temperature.next |= S3
                        with temperature >= 4: # higher than or equal to 25
                            state_temperature.next |= S2
                    with state_temperature == S4: #cool untill 22.5
                        with temperature > 3: # higher than 22.5
                            state_temperature.next |= S4
                        with temperature <= 3: # less than or equal to 22.5
                            state_temperature.next |= S2
            with state_water == S6: # pump OFF
                with water <= 5: # less than or equal to %50
                    state_water.next |= S5
                    with state_temperature == S2: #ac OFF
                        with temperature < 2: # less than 20
                            state_temperature.next |= S3
                        with temperature > 5: # higher than 27.5
                            state_temperature.next |= S4
                        with pyrtl.otherwise: # between 20 and 27.5
                            state_temperature.next |= S2
                    with state_temperature == S3: # heat untill 25
                        with temperature < 4: # less than 25
                            state_temperature.next |= S3
                        with temperature >= 4: # higher than or equal to 25
                            state_temperature.next |= S2
                    with state_temperature == S4: #cool untill 22.5
                        with temperature > 3: # higher than 22.5
                            state_temperature.next |= S4
                        with temperature <= 3: # less than or equal to 22.5
                            state_temperature.next |= S2
                with water > 5: # higher than %50
                    state_water.next |= S6
                    with state_temperature == S2: #ac OFF
                        with temperature < 2: # less than 20
                            state_temperature.next |= S3
                        with temperature > 5: # higher than 27.5
                            state_temperature.next |= S4
                        with pyrtl.otherwise: # between 20 and 27.5
                            state_temperature.next |= S2
                    with state_temperature == S3: # heat untill 25
                        with temperature < 4: # less than 25
                            state_temperature.next |= S3
                        with temperature >= 4: # higher than or equal to 25
                            state_temperature.next |= S2
                    with state_temperature == S4: #cool untill 22.5
                        with temperature > 3: # higher than 22.5
                            state_temperature.next |= S4
                        with temperature <= 3: # less than or equal to 22.5
                            state_temperature.next |= S2
            with pyrtl.otherwise:
                state_water.next |= S1
                state_temperature.next |= S1
    with pyrtl.otherwise: # power OFF
        state_water.next |= S0
        state_temperature.next |= S0

pump <<= (state_water == S1) | (state_water == S5)
ac <<= 3*(state_temperature == S3) + (state_temperature == S4) # for S3 (heating): ac=11; for S4 (cooling): ac=01

print('--- plant_FSM Implementation ---')
print(pyrtl.working_block())
print()

sim_trace = pyrtl.SimulationTrace()
sim = pyrtl.Simulation(tracer=sim_trace)

sim_inputs = {
    'start':   '11111111111111111111100',
    'reset':   '01000000000000000000000',
    'water':   ['0', '1', '2','3', '4', '5','6','7','7', '13','14','14','15','15','14','13','7','6','5','4','3','3','3'],
    'temperature':   ['0', '1', '2','1', '2', '3','4','5','6', '6','6','5','4','4','3','3','4','5','6','1','1','1','1']
    }

for cycle in range(len(sim_inputs['start'])):
    sim.step({w: int(v[cycle]) for w, v in sim_inputs.items()})

print("--- Simulation Results ---")
sim_trace.render_trace(trace_list=['start', 'reset', 'water', 'pump', 'temperature','ac','state_water', 'state_temperature'])

print("--- Verilog for the TestBench ---")
with io.StringIO() as tbfile:
    pyrtl.output_verilog_testbench(dest_file=tbfile, simulation_trace=sim_trace)
    print(tbfile.getvalue())

pyrtl.synthesize()
pyrtl.optimize()

with io.StringIO() as vfile:
    pyrtl.output_to_verilog(dest_file=vfile)
    print(vfile.getvalue())