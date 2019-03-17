#import testinfra

def test_datafile1(host):
    datafile1_file = host.file('/data/file1.properties')
    assert datafile1_file.exists
    assert datafile1_file.is_file
    assert datafile1_file.contains('token') == False
