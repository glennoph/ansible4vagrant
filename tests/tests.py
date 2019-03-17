#import testinfra

def test_etchosts(host):
    etchosts_file = host.file('/etc/hosts')
    assert etchosts_file.exists
    assert etchosts_file.is_file

