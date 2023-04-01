# from flask_login import UserMixin
import config
# customer_name, email, phone, customer_type, countery_id, c_address, c_bin_nid, c_tin, shipping_countery_id, shipping_address

class Customers(config.db.Model):
    id = config.db.Column(config.db.Integer, primary_key=True)
    customer_name = config.db.Column(config.db.String(100))
    email = config.db.Column(config.db.String(100))
    phone = config.db.Column(config.db.String(100))
    customer_type = config.db.Column(config.db.String(100))
    country_id = config.db.Column(config.db.String(100))
    c_address = config.db.Column(config.db.String(100))
    c_bin_nid = config.db.Column(config.db.String(100))
    c_tin = config.db.Column(config.db.String(100))
    shipping_country_id = config.db.Column(config.db.String(100))
    shipping_address =config. db.Column(config.db.String(100))

#schema for get product through API

class CustomerSchema(config.ma.Schema):
    class Meta:
        # Fields to expose
        fields = ("id","customer_name", "email", "phone", "customer_type", "country_id", "c_address", "c_bin_nid", "c_tin", "shipping_country_id", "shipping_address")

