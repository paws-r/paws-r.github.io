<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>swf_describe_activity_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the specified activity type

### Description

Returns information about the specified activity type. This includes
configuration settings provided when the type was registered and other
general information about the type.

**Access Control**

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

-   Use a `Resource` element with the domain name to limit the action to
    only specified domains.

-   Use an `Action` element to allow or deny permission to call this
    action.

-   Constrain the following parameters by using a `Condition` element
    with the appropriate keys.

    -   `activityType.name`: String constraint. The key is
        `swf:activityType.name`.

    -   `activityType.version`: String constraint. The key is
        `swf:activityType.version`.

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's `cause` parameter is set
to `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see
[Using IAM to Manage Access to Amazon SWF
Workflows](https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the *Amazon SWF Developer Guide*.

### Usage

    swf_describe_activity_type(domain, activityType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="swf_describe_activity_type_:_domain">domain</code></td>
<td><p>[required] The name of the domain in which the activity type is
registered.</p></td>
</tr>
<tr class="even">
<td><code
id="swf_describe_activity_type_:_activityType">activityType</code></td>
<td><p>[required] The activity type to get information about. Activity
types are identified by the <code>name</code> and <code>version</code>
that were supplied when the activity was registered.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      typeInfo = list(
        activityType = list(
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
        defaultTaskHeartbeatTimeout = "string",
        defaultTaskList = list(
          name = "string"
        ),
        defaultTaskPriority = "string",
        defaultTaskScheduleToStartTimeout = "string",
        defaultTaskScheduleToCloseTimeout = "string"
      )
    )

### Request syntax

    svc$describe_activity_type(
      domain = "string",
      activityType = list(
        name = "string",
        version = "string"
      )
    )
