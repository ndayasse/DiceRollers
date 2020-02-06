function [ array_of_rolls, sumtotal ] = DiceRoller( )
%DiceRoller Rolls desired number of desired-sided dice.
%   From input dialog box, enter the number of dice you want rolled and the 
%   number of the sidesfor the dice. 
%   Outputs each roll in an array, along with the sum total (array, sum).

prompts = {'Enter number of dice to be rolled:',...
    'Enter the number of sides the dice should have:'};
dlgtitle = 'Dice Specifications';

answers = inputdlg({'Enter number of dice to be rolled:',...
    'Enter the number of sides the dice should have:'},...
    'Dice Specifications'); % opens a dialog box to get input

number_of_dice = str2double(answers{1});
number_of_sides = str2double(answers{2});


array_of_rolls = randi(number_of_sides,number_of_dice,1); %get the rolls
sumtotal = sum(array_of_rolls); %sum the total of the rolls

message_rolls = strcat('Your rolls are:  ',num2str(array_of_rolls'));
message_sum = strcat('Your total is:  ',num2str(sumtotal));

f = msgbox({message_rolls;message_sum}); %output as a message box


end

