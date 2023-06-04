<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_create_ip_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an IP access control group

### Description

Creates an IP access control group.

An IP access control group provides you with the ability to control the
IP addresses from which users are allowed to access their WorkSpaces. To
specify the CIDR address ranges, add rules to your IP access control
group and then associate the group with your directory. You can add
rules when you create the group or at any time using
`authorize_ip_rules`.

There is a default IP access control group associated with your
directory. If you don't associate an IP access control group with your
directory, the default group is used. The default group includes a
default rule that allows users to access their WorkSpaces from anywhere.
You cannot modify the default IP access control group for your
directory.

### Usage

    workspaces_create_ip_group(GroupName, GroupDesc, UserRules, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_create_ip_group_:_GroupName">GroupName</code></td>
<td><p>[required] The name of the group.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_create_ip_group_:_GroupDesc">GroupDesc</code></td>
<td><p>The description of the group.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspaces_create_ip_group_:_UserRules">UserRules</code></td>
<td><p>The rules to add to the group.</p></td>
</tr>
<tr class="even">
<td><code id="workspaces_create_ip_group_:_Tags">Tags</code></td>
<td><p>The tags. Each WorkSpaces resource can have a maximum of 50
tags.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GroupId = "string"
    )

### Request syntax

    svc$create_ip_group(
      GroupName = "string",
      GroupDesc = "string",
      UserRules = list(
        list(
          ipRule = "string",
          ruleDesc = "string"
        )
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
