[some controller code ...]

ec2 = AWS::EC2::Base.new(:access_key_id => "YOUR_AWS_ACCESS_KEY_ID", :secret_access_key => "YOUR_AWS_SECRET_ACCESS_KEY")

# get ALL public images
@ec2_images = ec2.describe_images().imagesSet.item

# Get info on all public EC2 images created by the Amazon EC2 team.
@ec2_images_amazon = ec2.describe_images(:owner_id => "amazon").imagesSet.item

[some more controller code ...]
