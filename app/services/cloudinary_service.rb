# app/services/cloudinary_service.rb
class CloudinaryService
  def self.upload_image(file)
    cloudinary_response = Cloudinary::Uploader.upload(
      file.tempfile.path, 
      crop: :fill)

    url = cloudinary_response["secure_url"]
    url
  end

  def self.upload_mp3(file)
    cloudinary_response = Cloudinary::Uploader.upload(file.tempfile.path, resource_type: :auto)
    url = cloudinary_response["secure_url"]
    url
  end
end
