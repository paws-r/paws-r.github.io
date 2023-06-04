<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_create_computer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Active Directory computer object in the specified directory

### Description

Creates an Active Directory computer object in the specified directory.

### Usage

    directoryservice_create_computer(DirectoryId, ComputerName, Password,
      OrganizationalUnitDistinguishedName, ComputerAttributes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_create_computer_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] The identifier of the directory in which to create the
computer account.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_create_computer_:_ComputerName">ComputerName</code></td>
<td><p>[required] The name of the computer account.</p></td>
</tr>
<tr class="odd">
<td><code
id="directoryservice_create_computer_:_Password">Password</code></td>
<td><p>[required] A one-time password that is used to join the computer
to the directory. You should generate a random, strong password to use
for this parameter.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_create_computer_:_OrganizationalUnitDistinguishedName">OrganizationalUnitDistinguishedName</code></td>
<td><p>The fully-qualified distinguished name of the organizational unit
to place the computer account in.</p></td>
</tr>
<tr class="odd">
<td><code
id="directoryservice_create_computer_:_ComputerAttributes">ComputerAttributes</code></td>
<td><p>An array of Attribute objects that contain any LDAP attributes to
apply to the computer account.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Computer = list(
        ComputerId = "string",
        ComputerName = "string",
        ComputerAttributes = list(
          list(
            Name = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$create_computer(
      DirectoryId = "string",
      ComputerName = "string",
      Password = "string",
      OrganizationalUnitDistinguishedName = "string",
      ComputerAttributes = list(
        list(
          Name = "string",
          Value = "string"
        )
      )
    )
