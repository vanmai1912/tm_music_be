# app/services/cloudinary_service.rb
class CloudinaryService
  def self.upload_image(file)
    cloudinary_response = Cloudinary::Uploader.upload(file.tempfile.path)
    url = cloudinary_response["secure_url"]
    url
  end

  def self.upload_video(file)
    cloudinary_response = Cloudinary::Uploader.upload(file.tempfile.path, resource_type: :video)
    url = cloudinary_response["secure_url"]
    url
  end
end
