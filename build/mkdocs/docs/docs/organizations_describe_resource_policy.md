<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>organizations_describe_resource_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about a resource policy

### Description

Retrieves information about a resource policy.

You can only call this operation from the organization's management
account or by a member account that is a delegated administrator for an
Amazon Web Services service.

### Usage

    organizations_describe_resource_policy()

### Value

A list with the following syntax:

    list(
      ResourcePolicy = list(
        ResourcePolicySummary = list(
          Id = "string",
          Arn = "string"
        ),
        Content = "string"
      )
    )
