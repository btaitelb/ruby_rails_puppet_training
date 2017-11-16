Facter.add(:ips) do
  setcode do
    ifaces = Facter.fact('interfaces').value.split(',')
    ips = ifaces.map do |iface|
      Facter.fact("ipaddress_#{iface}").value
    end
  end
end
