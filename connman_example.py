import pyconnman

manager = pyconnman.ConnManager()

technologies = manager.get_technologies()
print 'Technologies'
print '========================================================='
for (path, params) in technologies:
    print path, '['+params['Name']+']'

services = manager.get_services()
print 'Services'
print '========================================================='
for (path, params) in services:
    print path, '['+params['Name']+']'
