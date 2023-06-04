<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>support_describe_cases</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of cases that you specify by passing one or more case IDs

### Description

Returns a list of cases that you specify by passing one or more case
IDs. You can use the `afterTime` and `beforeTime` parameters to filter
the cases by date. You can set values for the `includeResolvedCases` and
`includeCommunications` parameters to specify how much information to
return.

The response returns the following in JSON format:

-   One or more
    [CaseDetails](https://docs.aws.amazon.com/awssupport/latest/APIReference/API_CaseDetails.html)
    data types.

-   One or more `nextToken` values, which specify where to paginate the
    returned records represented by the `CaseDetails` objects.

Case data is available for 12 months after creation. If a case was
created more than 12 months ago, a request might return an error.

-   You must have a Business, Enterprise On-Ramp, or Enterprise Support
    plan to use the Amazon Web Services Support API.

-   If you call the Amazon Web Services Support API from an account that
    doesn't have a Business, Enterprise On-Ramp, or Enterprise Support
    plan, the `SubscriptionRequiredException` error message appears. For
    information about changing your support plan, see [Amazon Web
    Services Support](https://aws.amazon.com/premiumsupport/).

### Usage

    support_describe_cases(caseIdList, displayId, afterTime, beforeTime,
      includeResolvedCases, nextToken, maxResults, language,
      includeCommunications)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="support_describe_cases_:_caseIdList">caseIdList</code></td>
<td><p>A list of ID numbers of the support cases you want returned. The
maximum number of cases is 100.</p></td>
</tr>
<tr class="even">
<td><code id="support_describe_cases_:_displayId">displayId</code></td>
<td><p>The ID displayed for a case in the Amazon Web Services Support
Center user interface.</p></td>
</tr>
<tr class="odd">
<td><code id="support_describe_cases_:_afterTime">afterTime</code></td>
<td><p>The start date for a filtered date search on support case
communications. Case communications are available for 12 months after
creation.</p></td>
</tr>
<tr class="even">
<td><code
id="support_describe_cases_:_beforeTime">beforeTime</code></td>
<td><p>The end date for a filtered date search on support case
communications. Case communications are available for 12 months after
creation.</p></td>
</tr>
<tr class="odd">
<td><code
id="support_describe_cases_:_includeResolvedCases">includeResolvedCases</code></td>
<td><p>Specifies whether to include resolved support cases in the
<code>describe_cases</code> response. By default, resolved cases aren't
included.</p></td>
</tr>
<tr class="even">
<td><code id="support_describe_cases_:_nextToken">nextToken</code></td>
<td><p>A resumption point for pagination.</p></td>
</tr>
<tr class="odd">
<td><code
id="support_describe_cases_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return before
paginating.</p></td>
</tr>
<tr class="even">
<td><code id="support_describe_cases_:_language">language</code></td>
<td><p>The language in which Amazon Web Services Support handles the
case. Amazon Web Services Support currently supports Chinese (“zh”),
English ("en"), Japanese ("ja") and Korean (“ko”). You must specify the
ISO 639-1 code for the <code>language</code> parameter if you want
support in that language.</p></td>
</tr>
<tr class="odd">
<td><code
id="support_describe_cases_:_includeCommunications">includeCommunications</code></td>
<td><p>Specifies whether to include communications in the
<code>describe_cases</code> response. By default, communications are
included.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      cases = list(
        list(
          caseId = "string",
          displayId = "string",
          subject = "string",
          status = "string",
          serviceCode = "string",
          categoryCode = "string",
          severityCode = "string",
          submittedBy = "string",
          timeCreated = "string",
          recentCommunications = list(
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
          ),
          ccEmailAddresses = list(
            "string"
          ),
          language = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_cases(
      caseIdList = list(
        "string"
      ),
      displayId = "string",
      afterTime = "string",
      beforeTime = "string",
      includeResolvedCases = TRUE|FALSE,
      nextToken = "string",
      maxResults = 123,
      language = "string",
      includeCommunications = TRUE|FALSE
    )
