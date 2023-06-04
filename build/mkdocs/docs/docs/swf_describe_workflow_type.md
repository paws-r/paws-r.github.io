<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>swf_describe_workflow_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the specified workflow type

### Description

Returns information about the specified *workflow type*. This includes
configuration settings specified when the type was registered and other
information such as creation date, current status, etc.

**Access Control**

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

-   Use a `Resource` element with the domain name to limit the action to
    only specified domains.

-   Use an `Action` element to allow or deny permission to call this
    action.

-   Constrain the following parameters by using a `Condition` element
    with the appropriate keys.

    -   `workflowType.name`: String constraint. The key is
        `swf:workflowType.name`.

    -   `workflowType.version`: String constraint. The key is
        `swf:workflowType.version`.

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's `cause` parameter is set
to `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see
[Using IAM to Manage Access to Amazon SWF
Workflows](https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the *Amazon SWF Developer Guide*.

### Usage

    swf_describe_workflow_type(domain, workflowType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="swf_describe_workflow_type_:_domain">domain</code></td>
<td><p>[required] The name of the domain in which this workflow type is
registered.</p></td>
</tr>
<tr class="even">
<td><code
id="swf_describe_workflow_type_:_workflowType">workflowType</code></td>
<td><p>[required] The workflow type to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      typeInfo = list(
        workflowType = list(
          name = "string",
          version = "string"
        ),
        status = "REGISTERED"|"DEPRECATED",
        description = "string",
        creationDate = as.POSIXct(
          "2015-01-01"
        ),
        deprecationDate = as.POSIXct(
          "2015-01-01"
        )
      ),
      configuration = list(
        defaultTaskStartToCloseTimeout = "string",
        defaultExecutionStartToCloseTimeout = "string",
        defaultTaskList = list(
          name = "string"
        ),
        defaultTaskPriority = "string",
        defaultChildPolicy = "TERMINATE"|"REQUEST_CANCEL"|"ABANDON",
        defaultLambdaRole = "string"
      )
    )

### Request syntax

    svc$describe_workflow_type(
      domain = "string",
      workflowType = list(
        name = "string",
        version = "string"
      )
    )
