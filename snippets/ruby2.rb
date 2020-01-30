class CreateTransactions < ActiveRecord::Migration[6.0]
    def change
        create_table :transactions do |t|
            t.float :amount
            t.datetime :trans_date
            t.string :notes
            t.integer :status
            t.integer :trans_type

            t.timestamps
        end
    end
end

base_account = Account.find(1)
trans1 = Transaction.create(
    amount: 50.87, 
    trans_date: Date.today, 
    notes: 'gas bill', 
    status: :settled, t
    rans_type: :debit, 
    account: base_account)
trans2 = Transaction.create(
    amount: 16.95, 
    trans_date: 
    Date.today, 
    notes: 'dry cleaners', 
    status: :pending, 
    trans_type: :debit,
    account: base_account)

puts trans1.pending? # => false
puts trans2.pending? # => true

trans2.status = 'settled'
puts trans2.pending? # => false
puts Transaction.where(status: 'settled').count # => 2

trans2.pending!
puts trans2.pending? # => true
puts tran2.settled? # => false