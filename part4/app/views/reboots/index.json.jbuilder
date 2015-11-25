json.array!(@reboots) do |reboot|
  json.extract! reboot, :id, :title, :description, :type
  json.url reboot_url(reboot, format: :json)
end
