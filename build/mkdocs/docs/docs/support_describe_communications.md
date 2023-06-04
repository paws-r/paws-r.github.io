<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>support_describe_communications</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns communications and attachments for one or more support cases

### Description

Returns communications and attachments for one or more support cases.
Use the `afterTime` and `beforeTime` parameters to filter by date. You
can use the `caseId` parameter to restrict the results to a specific
case.

Case data is available for 12 months after creation. If a case was
created more than 12 months ago, a request for data might cause an
error.

You can use the `maxResults` and `nextToken` parameters to control the
pagination of the results. Set `maxResults` to the number of cases that
you want to display on each page, and use `nextToken` to specify the
resumption of pagination.

-   You must have a Business, Enterprise On-Ramp, or Enterprise Support
    plan to use the Amazon Web Services Support API.

-   If you call the Amazon Web Services Support API from an account that
    doesn't have a Business, Enterprise On-Ramp, or Enterprise Support
    plan, the `SubscriptionRequiredException` error message appears. For
    information about changing your support plan, see [Amazon Web
    Services Support](https://aws.amazon.com/premiumsupport/).

### Usage

    support_describe_communications(caseId, beforeTime, afterTime,
      nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="support_describe_communications_:_caseId">caseId</code></td>
<td><p>[required] The support case ID requested or returned in the call.
The case ID is an alphanumeric string formatted as shown in this
example: case-<em>12345678910-2013-c4c1d2bf33c5cf47</em></p></td>
</tr>
<tr class="even">
<td><code
id="support_describe_communications_:_beforeTime">beforeTime</code></td>
<td><p>The end date for a filtered date search on support case
communications. Case communications are available for 12 months after
creation.</p></td>
</tr>
<tr class="odd">
<td><code
id="support_describe_communications_:_afterTime">afterTime</code></td>
<td><p>The start date for a filtered date search on support case
communications. Case communications are available for 12 months after
creation.</p></td>
</tr>
<tr class="even">
<td><code
id="support_describe_communications_:_nextToken">nextToken</code></td>
<td><p>A resumption point for pagination.</p></td>
</tr>
<tr class="odd">
<td><code
id="support_describe_communications_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return before
paginating.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      communications = list(
        list(
          caseId = "string",
          body = "string",
          submittedBy = "string",
          timeCreated = "string",
          attachmentSet = list(
            list(
              attachmentId = "string",
              fileName = "string"
            )
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_communications(
      caseId = "string",
      beforeTime = "string",
      afterTime = "string",
      nextToken = "string",
      maxResults = 123
    )
