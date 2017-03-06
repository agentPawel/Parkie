Geocoder.configure(

    # geocoding service:
    :lookup => :google,

    # IP address geocoding service:
    :ip_lookup => :maxmind,

    # to use an API key:
    :api_key => 'AIzaSyDaMOv8g5liwrazAzGhui5W4CpzA4FFhq8',

    # this is very important option for configuring geocoder with API key
    :use_https => true,

    # geocoding service request timeout, in seconds (default 3):
    :timeout => 3,

    # set default units to kilometers:
    :units => :km,
)
