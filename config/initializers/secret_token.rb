# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
MtgDatabaseApi::Application.config.secret_key_base = 'e8196d7c4999e18441ae842906a926891bc55ca0fa30a52743c6b9ddf214818466678a60568e7cc79cc82c5f1eb34f334a31ab403aaaea387db0ced1f3448dda'
