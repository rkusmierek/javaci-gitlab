gitlab_rails['ldap_enabled'] = true
gitlab_rails['ldap_servers'] = {
'main' => {
  'label' => 'ASC AD',
  'host' =>  'ac.software.altkom.pl',
  'port' => 389,
  'uid' => 'sAMAccountName',
  'bind_dn' => 'change-me',
  'password' => 'change-me',
  'active_directory' => true,
  'base' => 'DC=software,DC=altkom,DC=pl'
  }
}
