<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_update_number_of_domain_controllers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds or removes domain controllers to or from the directory

### Description

Adds or removes domain controllers to or from the directory. Based on
the difference between current value and new value (provided through
this API call), domain controllers will be added or removed. It may take
up to 45 minutes for any new domain controllers to become fully active
once the requested number of domain controllers is updated. During this
time, you cannot make another update request.

### Usage

    directoryservice_update_number_of_domain_controllers(DirectoryId,
      DesiredNumber)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_update_number_of_domain_controllers_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] Identifier of the directory to which the domain
controllers will be added or removed.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_update_number_of_domain_controllers_:_DesiredNumber">DesiredNumber</code></td>
<td><p>[required] The number of domain controllers desired in the
directory.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_number_of_domain_controllers(
      DirectoryId = "string",
      DesiredNumber = 123
    )
