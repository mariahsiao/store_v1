Pay2go.setup do |pay2go|
  if Rails.env.development?
    pay2go.merchant_id = "11444707"

    pay2go.hash_key    = "gh6kv4syZm3DhPUHrmLQNN4BdRqCpjbF"
    pay2go.hash_iv     = "BiZ7nsFmOJZ5zTN0"
    pay2go.service_url = "https://capi.pay2go.com/MPG/mpg_gateway"
  else
    pay2go.merchant_id = "11444707"
    pay2go.hash_key    = "gh6kv4syZm3DhPUHrmLQNN4BdRqCpjbF"
    pay2go.hash_iv     = "BiZ7nsFmOJZ5zTN0"
    pay2go.service_url = "https://api.pay2go.com/MPG/mpg_gateway"
  end
end
