vault server -config=/etc/vault.hcl

# si pas ssl
export VAULT_ADDR=http://127.0.0.1:8200

# 1ere fois
vault init

# si sealed
vault unseal

# activating backends (if needed)
# vault mount ssh

# adding keys
vault write secret/gitlab/deployer/ssh_pub_key value=@gitlab.pub
vault write secret/gitlab/deployer/ssh_priv_key value=@gitlab.key

# on quit
vault seal
