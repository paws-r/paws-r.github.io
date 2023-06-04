<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>swf_describe_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the specified domain, including description and status

### Description

Returns information about the specified domain, including description
and status.

**Access Control**

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

-   Use a `Resource` element with the domain name to limit the action to
    only specified domains.

-   Use an `Action` element to allow or deny permission to call this
    action.

-   You cannot use an IAM policy to constrain this action's parameters.

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's `cause` parameter is set
to `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see
[Using IAM to Manage Access to Amazon SWF
Workflows](https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the *Amazon SWF Developer Guide*.

### Usage

    swf_describe_domain(name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="swf_describe_domain_:_name">name</code></td>
<td><p>[required] The name of the domain to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      domainInfo = list(
        name = "string",
        status = "REGISTERED"|"DEPRECATED",
        description = "string",
        arn = "string"
      ),
      configuration = list(
        workflowExecutionRetentionPeriodInDays = "string"
      )
    )

### Request syntax

    svc$describe_domain(
      name = "string"
    )
