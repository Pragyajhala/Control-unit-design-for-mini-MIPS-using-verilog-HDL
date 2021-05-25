module Special_Assignment(input [5:0]op, 
								  input [5:0]func, 
								  output reg [1:0]RegDst,RegInSrc,LogicFn,FnClass,BrType,PCSrc, 
			                 output reg RegWrite,ALUSrc,Add_Sub,DataRead,DataWrite);

always@(*)
begin
	if (op==6'b001111) //&& (func==6'bzzzzzz)) //Load Upper Immediate
	begin
		RegWrite = 1'b1;
		RegDst = 2'b00;
		RegInSrc = 2'b01;
		ALUSrc = 1'b1;
		Add_Sub = 1'bx;
		LogicFn = 2'bxx;
		FnClass = 2'b00;
		DataRead = 1'b0;
		DataWrite = 1'b0;
		BrType = 2'b00;
		PCSrc = 2'b00;
	end
	
	else if ((op==6'b000000) && (func==6'b100000)) //Add
	begin
		RegWrite = 1'b1;
		RegDst = 2'b01;
		RegInSrc = 2'b01;
		ALUSrc = 1'b0;
		Add_Sub = 1'b0;
		LogicFn = 2'bxx;
		FnClass = 2'b10;
		DataRead = 1'b0;
		DataWrite = 1'b0;
		BrType = 2'b00;
		PCSrc = 2'b00;
	end
	
	else if ((op==6'b000000) && (func==6'b100010)) //Sub
	begin
		RegWrite = 1'b1;
		RegDst = 2'b01;
		RegInSrc = 2'b01;
		ALUSrc = 1'b0;
		Add_Sub = 1'b1;
		LogicFn = 2'bxx;
		FnClass = 2'b10;
		DataRead = 1'b0;
		DataWrite = 1'b0;
		BrType = 2'b00;
		PCSrc = 2'b00;
	end
	
	else if ((op==6'b000000) && (func==6'b101010)) //Set Less Than
	begin
		RegWrite = 1'b1;
		RegDst = 2'b01;
		RegInSrc = 2'b01;
		ALUSrc = 1'b0;
		Add_Sub = 1'b1;
		LogicFn = 2'bxx;
		FnClass = 2'b01;
		DataRead = 1'b0;
		DataWrite = 1'b0;
		BrType = 2'b00;
		PCSrc = 2'b00;
	end
	
	else if (op==6'b001000) // && (func==6'bzzzzzz)) //Add Immediate
	begin
		RegWrite = 1'b1;
		RegDst = 2'b00;
		RegInSrc = 2'b01;
		ALUSrc = 1'b1;
		Add_Sub = 1'b0;
		LogicFn = 2'bxx;
		FnClass = 2'b10;
		DataRead = 1'b0;
		DataWrite = 1'b0;
		BrType = 2'b00;
		PCSrc = 2'b00;
	end
	
	else if (op==6'b001010) //&& (func==6'bzzzzzz)) //Set Less Than Immediate
	begin
		RegWrite = 1'b1;
		RegDst = 2'b00;
		RegInSrc = 2'b01;
		ALUSrc = 1'b1;
		Add_Sub = 1'b1;
		LogicFn = 2'bxx;
		FnClass = 2'b01;
		DataRead = 1'b0;
		DataWrite = 1'b0;
		BrType = 2'b00;
		PCSrc = 2'b00;
	end
	
	else if ((op==6'b000000) && (func==6'b100100)) //AND
	begin
		RegWrite = 1'b1;
		RegDst = 2'b01;
		RegInSrc = 2'b01;
		ALUSrc = 1'b0;
		Add_Sub = 1'bx;
		LogicFn = 2'b00;
		FnClass = 2'b11;
		DataRead = 1'b0;
		DataWrite = 1'b0;
		BrType = 2'b00;
		PCSrc = 2'b00;
	end
	
	else if ((op==6'b000000) && (func==6'b100101)) //OR
	begin
		RegWrite = 1'b1;
		RegDst = 2'b01;
		RegInSrc = 2'b01;
		ALUSrc = 1'b0;
		Add_Sub = 1'bx;
		LogicFn = 2'b01;
		FnClass = 2'b11;
		DataRead = 1'b0;
		DataWrite = 1'b0;
		BrType = 2'b00;
		PCSrc = 2'b00;
	end
	
	else if ((op==6'b000000) && (func==6'b100110)) //XOR
	begin
		RegWrite = 1'b1;
		RegDst = 2'b01;
		RegInSrc = 2'b01;
		ALUSrc = 1'b0;
		Add_Sub = 1'bx;
		LogicFn = 2'b10;
		FnClass = 2'b11;
		DataRead = 1'b0;
		DataWrite = 1'b0;
		BrType = 2'b00;
		PCSrc = 2'b00;
	end
	
	else if ((op==6'b000000) && (func==6'b100111)) //NOR
	begin
		RegWrite = 1'b1;
		RegDst = 2'b01;
		RegInSrc = 2'b01;
		ALUSrc = 1'b0;
		Add_Sub = 1'bx;
		LogicFn = 2'b11;
		FnClass = 2'b11;
		DataRead = 1'b0;
		DataWrite = 1'b0;
		BrType = 2'b00;
		PCSrc = 2'b00;
	end
	
	else if (op==6'b001100) //&& (func==6'bzzzzzz)) //AND Immediate
	begin
		RegWrite = 1'b1;
		RegDst = 2'b00;
		RegInSrc = 2'b01;
		ALUSrc = 1'b1;
		Add_Sub = 1'bx;
		LogicFn = 2'b00;
		FnClass = 2'b11;
		DataRead = 1'b0;
		DataWrite = 1'b0;
		BrType = 2'b00;
		PCSrc = 2'b00;
	end
	
	else if (op==6'b001101) //&& (func==6'bzzzzzz)) //OR Immediate
	begin
		RegWrite = 1'b1;
		RegDst = 2'b00;
		RegInSrc = 2'b01;
		ALUSrc = 1'b1;
		Add_Sub = 1'bx;
		LogicFn = 2'b01;
		FnClass = 2'b11;
		DataRead = 1'b0;
		DataWrite = 1'b0;
		BrType = 2'b00;
		PCSrc = 2'b00;
	end
	
	else if (op==6'b001110) //&& (func==6'bzzzzzz)) //XOR Immediate
	begin
		RegWrite = 1'b1;
		RegDst = 2'b00;
		RegInSrc = 2'b01;
		ALUSrc = 1'b1;
		Add_Sub = 1'bx;
		LogicFn = 2'b10;
		FnClass = 2'b11;
		DataRead = 1'b0;
		DataWrite = 1'b0;
		BrType = 2'b00;
		PCSrc = 2'b00;
	end
	
	else if (op==6'b100011) //&& (func==6'bzzzzzz)) //Load Word
	begin
		RegWrite = 1'b1;
		RegDst = 2'b00;
		RegInSrc = 2'b00;
		ALUSrc = 1'b1;
		Add_Sub = 1'b0;
		LogicFn = 2'bxx;
		FnClass = 2'b10;
		DataRead = 1'b1;
		DataWrite = 1'b0;
		BrType = 2'b00;
		PCSrc = 2'b00;
	end
	
	else if (op==6'b101011) //&& (func==6'bzzzzzz)) //Store Word
	begin
		RegWrite = 1'b0;
		RegDst = 2'bxx;
		RegInSrc = 2'bxx;
		ALUSrc = 1'b1;
		Add_Sub = 1'b0;
		LogicFn = 2'bxx;
		FnClass = 2'b10;
		DataRead = 1'b0;
		DataWrite = 1'b1;
		BrType = 2'b00;
		PCSrc = 2'b00;
	end 
	
	else if (op==6'b000010) //&& (func==6'bzzzzzz)) //Jump
	begin
		RegWrite = 1'b0;
		RegDst = 2'bxx;
		RegInSrc = 2'bxx;
		ALUSrc = 1'bx;
		Add_Sub = 1'bx;
		LogicFn = 2'bxx;
		FnClass = 2'bxx;
		DataRead = 1'b0;
		DataWrite = 1'b0;
		BrType = 2'bxx;
		PCSrc = 2'b01;
	end 
	
	else if ((op==6'b000000) && (func==6'b001000)) //Jump Register
	begin
		RegWrite = 1'b0;
		RegDst = 2'bxx;
		RegInSrc = 2'bxx;
		ALUSrc = 1'bx;
		Add_Sub = 1'bx;
		LogicFn = 2'bxx;
		FnClass = 2'bxx;
		DataRead = 1'b0;
		DataWrite = 1'b0;
		BrType = 2'bxx;
		PCSrc = 2'b10;
	end 
	
	else if (op==6'b000001) //&& (func==6'bzzzzzz)) //Branch on Less than 0
	begin
		RegWrite = 1'b0;
		RegDst = 2'bxx;
		RegInSrc = 2'bxx;
		ALUSrc = 1'bx;
		Add_Sub = 1'bx;
		LogicFn = 2'bxx;
		FnClass = 2'bxx;
		DataRead = 1'b0;
		DataWrite = 1'b0;
		BrType = 2'b11;
		PCSrc = 2'b00;
	end 
	
	else if (op==6'b000100) //&& (func==6'bzzzzzz)) //Branch on equal
	begin
		RegWrite = 1'b0;
		RegDst = 2'bxx;
		RegInSrc = 2'bxx;
		ALUSrc = 1'bx;
		Add_Sub = 1'bx;
		LogicFn = 2'bxx;
		FnClass = 2'bxx;
		DataRead = 1'b0;
		DataWrite = 1'b0;
		BrType = 2'b01;
		PCSrc = 2'b00;
	end 
	
	else if (op==6'b000101) //&& (func==6'bzzzzzz)) //Branch on not equal
	begin
		RegWrite = 1'b0;
		RegDst = 2'bxx;
		RegInSrc = 2'bxx;
		ALUSrc = 1'bx;
		Add_Sub = 1'bx;
		LogicFn = 2'bxx;
		FnClass = 2'bxx;
		DataRead = 1'b0;
		DataWrite = 1'b0;
		BrType = 2'b10;
		PCSrc = 2'b00;
	end 
	
	else if (op==6'b000011) //&& (func==6'bzzzzzz)) //Jump and Link
	begin
		RegWrite = 1'b1;
		RegDst = 2'b10;
		RegInSrc = 2'b10;
		ALUSrc = 1'bx;
		Add_Sub = 1'bx;
		LogicFn = 2'bxx;
		FnClass = 2'bxx;
		DataRead = 1'b0;
		DataWrite = 1'b0;
		BrType = 2'b00;
		PCSrc = 2'b01;
	end 
	
	else if ((op==6'b000000) && (func==6'b001100)) //System Call
	begin
		RegWrite = 1'b0;
		RegDst = 2'bxx;
		RegInSrc = 2'bxx;
		ALUSrc = 1'bx;
		Add_Sub = 1'bx;
		LogicFn = 2'bxx;
		FnClass = 2'bxx;
		DataRead = 1'b0;
		DataWrite = 1'b0;
		BrType = 2'bxx;
		PCSrc = 2'b11;
	end 
	
	else 
	$display("Invalid ALU Instruction.");
	
end
endmodule	
		
		
		
					
						