class Pay2goService

  def initialize(order)
    @order = order
    @timestamp = order.created_at.to_i
    @merchant_order_no = "#{order.id}-s#{Time.now.strftime("$Y$m$d%H%M%S")}"
    @total_price = order.total
  end

  def check_value
    d = Digest::SHA256.hexdigest(url_params).upcase
  end

  def url_params
    "HashKey=#{Pay2go.hash_key}&Amt=#{@total_price}&Merchant_ID=#{Pay2go.merchant_id}&MerchantOderNo=#{@merchant_order_no}&TimeStamp#{@timestamp}&Version=1.1&HahIV=#{Pay2go.hash_iv}"
  end
end
