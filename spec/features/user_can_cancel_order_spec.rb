require 'rails_helper'

describe 'As a registered user when a single orders show page that is status:pending' do
  before(:each) do
    @user_1 = create(:user)
    @item_1 = create(:item)
    @item_2 = create(:item)
    @order_1 = create(:order, items_count:0, user: @user_1, status: 0)
    OrderItem.create!(item: @item_1, order: @order_1, quantity: 3, price: 1)
    OrderItem.create!(item: @item_2, order: @order_1, quantity: 1, price: 1)

    post_login(@user_1)

    visit profile_order_path(@order_1)
  end
  it 'I see a button or link to cancel the order' do

    expect(page).to have_selector(:link_or_button, 'Cancel Order')
  end
  it 'should see all order_items statuses change to unfulfilled' do

    click_on('Cancel Order')

    expect(current_path).to eq(profile_path)

    visit profile_order_path(@order_1)

    within "#item-0" do
      expect(page).to have_content("unfulfilled")
    end
    within '#item-1' do
      expect(page).to have_content("unfulfilled")
    end
  end
  it 'should see all item_quantities at zero and returned to merchants inventory' do

    click_on('Cancel Order')

    expect(current_path).to eq(profile_path)

    visit profile_order_path(@order_1)

    within "#item-0-quantity" do
      expect(page).to have_content("0")
    end
    within '#item-1-quantity' do
      expect(page).to have_content("0")
    end
  end
end
