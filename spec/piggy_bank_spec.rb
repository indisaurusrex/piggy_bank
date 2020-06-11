require 'piggy_bank'

describe PiggyBank do
    describe 'initialize' do
        it 'creates a new Piggy Bank called piggy_bank' do
            piggy_bank = PiggyBank.new
            expect(piggy_bank).to be_an_instance_of(PiggyBank)
        end
    end
    describe '#add_coins' do
        it 'adds 5 coins' do
            piggy_bank = PiggyBank.new
            piggy_bank.add_coins(5)
            expect(piggy_bank.coins).to eq(5)
        end
    end
    describe '#shake' do
        it 'does not cling when shaken if there is no money in it' do
        piggy_bank = PiggyBank.new
        expect(piggy_bank.shake).to eq(nil)
        end
    end
    describe '#shake' do
        it 'clings when shaken if there is money in it' do
        piggy_bank = PiggyBank.new
        piggy_bank.add_coins(5)
        expect(piggy_bank.shake).to eq('cling')
        end
    end
    describe '#break' do
        it 'returns the number of coins that was in the piggybank' do
        piggy_bank = PiggyBank.new
        piggy_bank.add_coins(5)
        expect(piggy_bank.break).to eq('Returns 5 coins')
        end
    end
    describe '#break' do
        it 'returns the number of coins that was in the piggybank' do
        piggy_bank = PiggyBank.new
        piggy_bank.add_coins(2)
        expect(piggy_bank.break).to eq('Returns 2 coins')
        end
    end
    describe '#break' do
        it 'returns the number of coins that was in the piggybank' do
        piggy_bank = PiggyBank.new
        piggy_bank.add_coins(1)
        expect(piggy_bank.break).to eq('Returns 1 coin')
        end
    end
    # describe '#break' do
    #     it 'returns 0 coins after piggybank is broken' do
    #     piggy_bank = PiggyBank.new
    #     piggy_bank.add_coins(1)
    #     piggy_bank.break
    #     expect(piggy_bank.coins).to eq(0)
    #     end
    # end
end