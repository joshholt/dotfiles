#!/usr/bin/python
import re, subprocess

def get_keychain_pass(account=None, server=None, label=None):
    params = {
            'security': '/usr/bin/security',
            'command': 'find-internet-password',
            'account': account,
            'server': server,
            'label': label,
            'keychain': '/Users/joshholt/Library/Keychains/login.keychain',
            }
    command = "sudo -u joshholt %(security)s -v %(command)s -g -a %(account)s -s %(server)s -j %(label)s %(keychain)s" % params
    output  = subprocess.check_output(command, shell=True, stderr=subprocess.STDOUT)
    outtext = [l for l in output.splitlines()
              if l.startswith('password: ')][0]
    return re.match(r'password: "(.*)"', outtext).group(1)
