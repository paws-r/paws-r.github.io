<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>customerprofiles_get_matches</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Before calling this API, use CreateDomain or UpdateDomain to enable identity resolution: set Matching to true

### Description

Before calling this API, use `create_domain` or `update_domain` to
enable identity resolution: set `Matching` to true.

GetMatches returns potentially matching profiles, based on the results
of the latest run of a machine learning process.

The process of matching duplicate profiles. If `Matching` = `true`,
Amazon Connect Customer Profiles starts a weekly batch process called
Identity Resolution Job. If you do not specify a date and time for
Identity Resolution Job to run, by default it runs every Saturday at
12AM UTC to detect duplicate profiles in your domains.

After the Identity Resolution Job completes, use the `get_matches` API
to return and review the results. Or, if you have configured
`ExportingConfig` in the `MatchingRequest`, you can download the results
from S3.

Amazon Connect uses the following profile attributes to identify
matches:

-   PhoneNumber

-   HomePhoneNumber

-   BusinessPhoneNumber

-   MobilePhoneNumber

-   EmailAddress

-   PersonalEmailAddress

-   BusinessEmailAddress

-   FullName

For example, two or more profiles—with spelling mistakes such as **John
Doe** and **Jhn Doe**, or different casing email addresses such as
**JOHN\_DOE@ANYCOMPANY.COM** and **johndoe@anycompany.com**, or
different phone number formats such as **555-010-0000** and
**+1-555-010-0000**—can be detected as belonging to the same customer
**John Doe** and merged into a unified profile.

### Usage

    customerprofiles_get_matches(NextToken, MaxResults, DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="customerprofiles_get_matches_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_get_matches_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per page.</p></td>
</tr>
<tr class="odd">
<td><code
id="customerprofiles_get_matches_:_DomainName">DomainName</code></td>
<td><p>[required] The unique name of the domain.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      MatchGenerationDate = as.POSIXct(
        "2015-01-01"
      ),
      PotentialMatches = 123,
      Matches = list(
        list(
          MatchId = "string",
          ProfileIds = list(
            "string"
          ),
          ConfidenceScore = 123.0
        )
      )
    )

### Request syntax

    svc$get_matches(
      NextToken = "string",
      MaxResults = 123,
      DomainName = "string"
    )
