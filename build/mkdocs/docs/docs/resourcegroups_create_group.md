<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resourcegroups_create_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a resource group with the specified name and description

### Description

Creates a resource group with the specified name and description. You
can optionally include either a resource query or a service
configuration. For more information about constructing a resource query,
see [Build queries and groups in Resource
Groups](https://docs.aws.amazon.com/ARG/latest/userguide/) in the
*Resource Groups User Guide*. For more information about service-linked
groups and service configurations, see [Service configurations for
Resource
Groups](https://docs.aws.amazon.com/ARG/latest/userguide/about-slg.html).

**Minimum permissions**

To run this command, you must have the following permissions:

-   `resource-groups:CreateGroup`

### Usage

    resourcegroups_create_group(Name, Description, ResourceQuery, Tags,
      Configuration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="resourcegroups_create_group_:_Name">Name</code></td>
<td><p>[required] The name of the group, which is the identifier of the
group in other operations. You can't change the name of a resource group
after you create it. A resource group name can consist of letters,
numbers, hyphens, periods, and underscores. The name cannot start with
<code>AWS</code> or <code>aws</code>; these are reserved. A resource
group name must be unique within each Amazon Web Services Region in your
Amazon Web Services account.</p></td>
</tr>
<tr class="even">
<td><code
id="resourcegroups_create_group_:_Description">Description</code></td>
<td><p>The description of the resource group. Descriptions can consist
of letters, numbers, hyphens, underscores, periods, and spaces.</p></td>
</tr>
<tr class="odd">
<td><code
id="resourcegroups_create_group_:_ResourceQuery">ResourceQuery</code></td>
<td><p>The resource query that determines which Amazon Web Services
resources are members of this group. For more information about resource
queries, see <a
href="https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag">Create
a tag-based group in Resource Groups</a>.</p>
<p>A resource group can contain either a <code>ResourceQuery</code> or a
<code>Configuration</code>, but not both.</p></td>
</tr>
<tr class="even">
<td><code id="resourcegroups_create_group_:_Tags">Tags</code></td>
<td><p>The tags to add to the group. A tag is key-value pair
string.</p></td>
</tr>
<tr class="odd">
<td><code
id="resourcegroups_create_group_:_Configuration">Configuration</code></td>
<td><p>A configuration associates the resource group with an Amazon Web
Services service and specifies how the service can interact with the
resources in the group. A configuration is an array of
GroupConfigurationItem elements. For details about the syntax of service
configurations, see <a
href="https://docs.aws.amazon.com/ARG/latest/userguide/about-slg.html">Service
configurations for Resource Groups</a>.</p>
<p>A resource group can contain either a <code>Configuration</code> or a
<code>ResourceQuery</code>, but not both.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Group = list(
        GroupArn = "string",
        Name = "string",
        Description = "string"
      ),
      ResourceQuery = list(
        Type = "TAG_FILTERS_1_0"|"CLOUDFORMATION_STACK_1_0",
        Query = "string"
      ),
      Tags = list(
        "string"
      ),
      GroupConfiguration = list(
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
        ),
        ProposedConfiguration = list(
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
        ),
        Status = "UPDATING"|"UPDATE_COMPLETE"|"UPDATE_FAILED",
        FailureReason = "string"
      )
    )

### Request syntax

    svc$create_group(
      Name = "string",
      Description = "string",
      ResourceQuery = list(
        Type = "TAG_FILTERS_1_0"|"CLOUDFORMATION_STACK_1_0",
        Query = "string"
      ),
      Tags = list(
        "string"
      ),
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
