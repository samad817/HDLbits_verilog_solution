module top_module (
    input ring,
    input vibrate_mode,
    output ringer,       // Make sound
    output motor         // Vibrate
);
 // ringer is active when there is ring and vibration mode is off
    assign ringer = ring & ~vibrate_mode;
    
    // motor is active when there is ring and vibration mode is on
    assign motor = ring & vibrate_mode;
    
endmodule
