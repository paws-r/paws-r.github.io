<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>swf_list_activity_types</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about all activities registered in the specified domain that match the specified name and registration status

### Description

Returns information about all activities registered in the specified
domain that match the specified name and registration status. The result
includes information like creation date, current status of the activity,
etc. The results may be split into multiple pages. To retrieve
subsequent pages, make the call again using the `nextPageToken` returned
by the initial call.

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

    swf_list_activity_types(domain, name, registrationStatus, nextPageToken,
      maximumPageSize, reverseOrder)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="swf_list_activity_types_:_domain">domain</code></td>
<td><p>[required] The name of the domain in which the activity types
have been registered.</p></td>
</tr>
<tr class="even">
<td><code id="swf_list_activity_types_:_name">name</code></td>
<td><p>If specified, only lists the activity types that have this
name.</p></td>
</tr>
<tr class="odd">
<td><code
id="swf_list_activity_types_:_registrationStatus">registrationStatus</code></td>
<td><p>[required] Specifies the registration status of the activity
types to list.</p></td>
</tr>
<tr class="even">
<td><code
id="swf_list_activity_types_:_nextPageToken">nextPageToken</code></td>
<td><p>If <code>NextPageToken</code> is returned there are more results
available. The value of <code>NextPageToken</code> is a unique
pagination token for each page. Make the call again using the returned
token to retrieve the next page. Keep all other arguments unchanged.
Each pagination token expires after 24 hours. Using an expired
pagination token will return a <code>400</code> error: "<code
style="white-space: pre;">⁠Specified token has exceeded its maximum lifetime⁠</code>".</p>
<p>The configured <code>maximumPageSize</code> determines how many
results can be returned in a single call.</p></td>
</tr>
<tr class="odd">
<td><code
id="swf_list_activity_types_:_maximumPageSize">maximumPageSize</code></td>
<td><p>The maximum number of results that are returned per call. Use
<code>nextPageToken</code> to obtain further pages of results.</p></td>
</tr>
<tr class="even">
<td><code
id="swf_list_activity_types_:_reverseOrder">reverseOrder</code></td>
<td><p>When set to <code>true</code>, returns the results in reverse
order. By default, the results are returned in ascending alphabetical
order by <code>name</code> of the activity types.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      typeInfos = list(
        list(
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
        )
      ),
      nextPageToken = "string"
    )

### Request syntax

    svc$list_activity_types(
      domain = "string",
      name = "string",
      registrationStatus = "REGISTERED"|"DEPRECATED",
      nextPageToken = "string",
      maximumPageSize = 123,
      reverseOrder = TRUE|FALSE
    )
