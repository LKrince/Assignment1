
# Register Loading Functions

# LOAD -------------------------------------------------
function load(operand1,operand2,bank_a,bank_b,reg_bank)
  #register banks
  if (reg_bank =='A')
    main_bank = bank_a
    sub_bank = bank_b
  else
    main_bank = bank_b
    sub_bank = bank_a
  end

  #test operand overload
  if(operand2[1] != "s")
    op2_type = UInt8
  else
    op2_type = String
  end

  #make change in register
  if (op2_type == String)
    source_regester_index = parse(operand2[2]) + 1
    terminal_regester_index= parse(operand1[2]) + 1
    main_bank[terminal_regester_index] = main_bank[source_regester_index]
  else
    source_data = parse(string("0x",operand2))
    terminal_regester_index= parse(operand1[2]) + 1
    main_bank[terminal_regester_index] = source_data
  end
end


#STAR -----------------------------------------------------
function STAR(operand1, operand2, BankA, BankB, reg_bank)
  #register banks
  if (reg_bank =='A')
    main_bank = bank_a
    sub_bank = bank_b
  else
    main_bank = bank_b
    sub_bank = bank_a
  end

  #test operand overload
  if(operand2[1] != "s")
    op2_type = UInt8
  else
    op2_type = String
  end

  #make change in register
  if (op2_type == String)
    source_regester_index = parse(operand2[2]) + 1
    terminal_regester_index= parse(operand1[2]) + 1
    sub_bank[terminal_regester_index] = main_bank[source_regester_index]
  else
    source_data = parse(string("0x",operand2))
    terminal_regester_index= parse(operand1[2]) + 1
    sub_bank[terminal_regester_index] = source_data
  end
end

#Logical Functions

#AND
#OR
#XOR


#Arithmetic Functions
