module top_module(
    input clk,
    input reset,
    input ena,
    output pm,
    output [7:0] hh,
    output [7:0] mm,
    output [7:0] ss);
    wire [7:0] ss_r, mm_r, hh_r;
    wire pm_r;

    assign ss = ss_r;
    assign mm = mm_r;
    assign hh = hh_r;
    assign pm = pm_r;

    always @(posedge clk) begin
        if (reset) begin
            ss_r <= 8'h00;
            mm_r <= 8'h00;
            hh_r <= 8'h12;
            pm_r <= 1'b0;
        end else if (ena) begin
            if (ss_r == 8'h59) begin
                ss_r <= 8'h00;
                if (mm_r == 8'h59) begin
                    mm_r <= 8'h00;
                    if (hh_r == 8'h12) hh_r <= 8'h01;
                    else if (hh_r == 8'h11) begin
                        hh_r <= 8'h12;
                        pm_r <= ~pm_r; 
                    end
                    else begin
                        if (hh_r[3:0] == 4'd9) begin
                            hh_r[7:4] <= hh_r[7:4] + 1;
                            hh_r[3:0] <= 4'd0;
                        end else begin
                            hh_r[3:0] <= hh_r[3:0] + 1;
                        end
                    end
                end else begin
                    if (mm_r[3:0] == 4'd9) begin
                        mm_r[7:4] <= mm_r[7:4] + 1;
                        mm_r[3:0] <= 4'd0;
                    end else begin
                        mm_r[3:0] <= mm_r[3:0] + 1;
                    end
                end
            end else begin
                if (ss_r[3:0] == 4'd9) begin
                    ss_r[7:4] <= ss_r[7:4] + 1;
                    ss_r[3:0] <= 4'd0;
                end else begin
                    ss_r[3:0] <= ss_r[3:0] + 1;
                end
            end
        end
    end

endmodule
