<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_get_rules</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get all rules for a detector (paginated) if ruleId and ruleVersion are not specified

### Description

Get all rules for a detector (paginated) if `ruleId` and `ruleVersion`
are not specified. Gets all rules for the detector and the `ruleId` if
present (paginated). Gets a specific rule if both the `ruleId` and the
`ruleVersion` are specified.

This is a paginated API. Providing null maxResults results in retrieving
maximum of 100 records per page. If you provide maxResults the value
must be between 50 and 100. To get the next page result, a provide a
pagination token from GetRulesResult as part of your request. Null
pagination token fetches the records from the beginning.

### Usage

    frauddetector_get_rules(ruleId, detectorId, ruleVersion, nextToken,
      maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="frauddetector_get_rules_:_ruleId">ruleId</code></td>
<td><p>The rule ID.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_get_rules_:_detectorId">detectorId</code></td>
<td><p>[required] The detector ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_get_rules_:_ruleVersion">ruleVersion</code></td>
<td><p>The rule version.</p></td>
</tr>
<tr class="even">
<td><code id="frauddetector_get_rules_:_nextToken">nextToken</code></td>
<td><p>The next page token.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_get_rules_:_maxResults">maxResults</code></td>
<td><p>The maximum number of rules to return for the request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ruleDetails = list(
        list(
          ruleId = "string",
          description = "string",
          detectorId = "string",
          ruleVersion = "string",
          expression = "string",
          language = "DETECTORPL",
          outcomes = list(
            "string"
          ),
          lastUpdatedTime = "string",
          createdTime = "string",
          arn = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$get_rules(
      ruleId = "string",
      detectorId = "string",
      ruleVersion = "string",
      nextToken = "string",
      maxResults = 123
    )
