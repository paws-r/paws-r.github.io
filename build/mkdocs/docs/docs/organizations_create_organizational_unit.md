<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>organizations_create_organizational_unit</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an organizational unit (OU) within a root or parent OU

### Description

Creates an organizational unit (OU) within a root or parent OU. An OU is
a container for accounts that enables you to organize your accounts to
apply policies according to your business requirements. The number of
levels deep that you can nest OUs is dependent upon the policy types
enabled for that root. For service control policies, the limit is five.

For more information about OUs, see [Managing Organizational
Units](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_ous.html)
in the *Organizations User Guide.*

If the request includes tags, then the requester must have the
`organizations:TagResource` permission.

This operation can be called only from the organization's management
account.

### Usage

    organizations_create_organizational_unit(ParentId, Name, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="organizations_create_organizational_unit_:_ParentId">ParentId</code></td>
<td><p>[required] The unique identifier (ID) of the parent root or OU
that you want to create the new OU in.</p>
<p>The <a href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>
for a parent ID string requires one of the following:</p>
<ul>
<li><p><strong>Root</strong> - A string that begins with "r-" followed
by from 4 to 32 lowercase letters or digits.</p></li>
<li><p><strong>Organizational unit (OU)</strong> - A string that begins
with "ou-" followed by from 4 to 32 lowercase letters or digits (the ID
of the root that the OU is in). This string is followed by a second "-"
dash and from 8 to 32 additional lowercase letters or digits.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="organizations_create_organizational_unit_:_Name">Name</code></td>
<td><p>[required] The friendly name to assign to the new OU.</p></td>
</tr>
<tr class="odd">
<td><code
id="organizations_create_organizational_unit_:_Tags">Tags</code></td>
<td><p>A list of tags that you want to attach to the newly created OU.
For each tag in the list, you must specify both a tag key and a value.
You can set the value to an empty string, but you can't set it to
<code>null</code>. For more information about tagging, see <a
href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html">Tagging
Organizations resources</a> in the Organizations User Guide.</p>
<p>If any one of the tags is not valid or if you exceed the allowed
number of tags for an OU, then the entire request fails and the OU is
not created.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OrganizationalUnit = list(
        Id = "string",
        Arn = "string",
        Name = "string"
      )
    )

### Request syntax

    svc$create_organizational_unit(
      ParentId = "string",
      Name = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # The following example shows how to create an OU that is named
    # AccountingOU. The new OU is directly under the root.:
    # 
    # 
    svc$create_organizational_unit(
      Name = "AccountingOU",
      ParentId = "r-examplerootid111"
    )

    ## End(Not run)
