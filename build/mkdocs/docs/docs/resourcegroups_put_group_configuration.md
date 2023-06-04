<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resourcegroups_put_group_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attaches a service configuration to the specified group

### Description

Attaches a service configuration to the specified group. This occurs
asynchronously, and can take time to complete. You can use
`get_group_configuration` to check the status of the update.

**Minimum permissions**

To run this command, you must have the following permissions:

-   `resource-groups:PutGroupConfiguration`

### Usage

    resourcegroups_put_group_configuration(Group, Configuration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resourcegroups_put_group_configuration_:_Group">Group</code></td>
<td><p>The name or ARN of the resource group with the configuration that
you want to update.</p></td>
</tr>
<tr class="even">
<td><code
id="resourcegroups_put_group_configuration_:_Configuration">Configuration</code></td>
<td><p>The new configuration to associate with the specified group. A
configuration associates the resource group with an Amazon Web Services
service and specifies how the service can interact with the resources in
the group. A configuration is an array of GroupConfigurationItem
elements.</p>
<p>For information about the syntax of a service configuration, see <a
href="https://docs.aws.amazon.com/ARG/latest/userguide/about-slg.html">Service
configurations for Resource Groups</a>.</p>
<p>A resource group can contain either a <code>Configuration</code> or a
<code>ResourceQuery</code>, but not both.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_group_configuration(
      Group = "string",
      Configuration = list(
        list(
          Type = "string",
          Parameters = list(
            list(
              Name = "string",
              Values = list(
                "string"
              )
            )
          )
        )
      )
    )
