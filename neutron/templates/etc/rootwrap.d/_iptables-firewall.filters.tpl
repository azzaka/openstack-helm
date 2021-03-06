# neutron-rootwrap command filters for nodes on which neutron is
# expected to control network
#
# This file should be owned by (and only-writeable by) the root user

# format seems to be
# cmd-name: filter-name, raw-command, user, args

[Filters]

# neutron/agent/linux/iptables_firewall.py
#   "iptables-save", ...
iptables-save: CommandFilter, iptables-save, root
iptables-restore: CommandFilter, iptables-restore, root
ip6tables-save: CommandFilter, ip6tables-save, root
ip6tables-restore: CommandFilter, ip6tables-restore, root

# neutron/agent/linux/iptables_firewall.py
#   "iptables", "-A", ...
iptables: CommandFilter, iptables, root
ip6tables: CommandFilter, ip6tables, root

# neutron/agent/linux/iptables_firewall.py
sysctl: CommandFilter, sysctl, root

# neutron/agent/linux/ip_conntrack.py
conntrack: CommandFilter, conntrack, root
