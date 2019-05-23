require 'factory_bot_rails'

EvCase.destroy_all
User.destroy_all
Verification.destroy_all
Revision.destroy_all
DocumentType.destroy_all
Employee.destroy_all
Client.destroy_all

# standalone models
FactoryBot.create_list(:client, 100)
FactoryBot.create_list(:document_type, 100)
FactoryBot.create_list(:list, 50)
FactoryBot.create_list(:mistake, 100)
FactoryBot.create_list(:revision, 20)

List.create(item: 'Electronic Signature', name: 'Signature Type 1')
List.create(item: 'Electronic Signature', name: 'Signature Type 2')
List.create(item: 'Electronic Signature', name: 'Signature Type 3')
List.create(item: 'Processor', name: 'Processor Name, Title, Business address', payload0: 'FirstName', payload1: 'LastName', payload2: 'Title', payload3: 'BusName', payload4: 'StreetAddr', payload5: 'City', payload6: 'State', payload7: 'Zip', payload8: 'unused', payload9: 'unused')

Revision.create(starts_on: '3/20/1987', expires_on: '11/20/1991')
Revision.create(starts_on: '5/7/1987', expires_on: '11/20/1991')
Revision.create(starts_on: '5/21/1990', expires_on: '11/20/1991')
Revision.create(starts_on: '11/21/1991', expires_on: '12/25/2007')
Revision.create(starts_on: '5/31/2005', expires_on: '3/25/2007')
Revision.create(starts_on: '3/26/2007', expires_on: '4/2/2009')
Revision.create(starts_on: '6/5/2007', expires_on: '4/2/2009')
Revision.create(starts_on: '6/16/2008', expires_on: '6/26/2008')
Revision.create(starts_on: '2/2/2009', expires_on: '5/7/2013')
Revision.create(starts_on: '8/7/2009', expires_on: '5/7/2013')
Revision.create(starts_on: '11/12/2009', expires_on: '11/27/2011')
Revision.create(starts_on: '6/27/2010', expires_on: '11/27/2011')
Revision.create(starts_on: '3/8/2013', expires_on: '1/21/2017')
Revision.create(starts_on: '11/14/2016', expires_on: '9/18/2017')
Revision.create(starts_on: '7/17/2017', expires_on: '8/31/2019')

Setting.create(entry: 'auditor', setting_type: 'Text', value_text: 'AF')
Setting.create(entry: 'revision', setting_type: 'Date', value_date: '7/17/2017')
Setting.create(entry: 'copy_banner_fields', setting_type: 'Boolean', value_boolean: true)
Setting.create(entry: 'copy_term_flag', setting_type: 'Boolean', value_boolean: true)

User.create(initials: 'AF', full_name: 'Andrew Fittro', user_name: 'afittro', role: 1, active: true)

# models dependent on others (associated models)
FactoryBot.create_list(:employee, 50) # needs client
# FactoryBot.create_list(:verification, 1) # needs employee, revision, document_type
# FactoryBot.create_list(:audit, 50) # needs verification
# FactoryBot.create_list(:ev_case, 50) # needs verification

p "Created #{Client.count} Clients"
p "Created #{DocumentType.count} Document Types"
p "Created #{Employee.count} Employees"
p "Created #{EvCase.count} E-Verify Cases"
p "Created #{List.count} List Items"
p "Created #{Revision.count} Revisions"
p "Created #{Setting.count} Settings"
p "Created #{User.count} Users"
p "Created #{Verification.count} Verifications"
