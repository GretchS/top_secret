## ERDs

- Take 1: http://dbdesigner.net/designer/schema/121354
- Take 2: http://dbdesigner.net/designer/schema/121922

## Models

### User
- email:unique:string e.g. bob@tesla.com

### Company
- name: string
- domain: string e.g. tesla.com

### Document
- company: references
- name: string
- content: text

### Permission
- company: references
- user: references
- can_write: boolean