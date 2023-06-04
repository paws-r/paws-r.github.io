<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>devopsguru_list_recommendations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of a specified insight's recommendations

### Description

Returns a list of a specified insight's recommendations. Each
recommendation includes a list of related metrics and a list of related
events.

### Usage

    devopsguru_list_recommendations(InsightId, NextToken, Locale, AccountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="devopsguru_list_recommendations_:_InsightId">InsightId</code></td>
<td><p>[required] The ID of the requested insight.</p></td>
</tr>
<tr class="even">
<td><code
id="devopsguru_list_recommendations_:_NextToken">NextToken</code></td>
<td><p>The pagination token to use to retrieve the next page of results
for this operation. If this value is null, it retrieves the first
page.</p></td>
</tr>
<tr class="odd">
<td><code
id="devopsguru_list_recommendations_:_Locale">Locale</code></td>
<td><p>A locale that specifies the language to use for
recommendations.</p></td>
</tr>
<tr class="even">
<td><code
id="devopsguru_list_recommendations_:_AccountId">AccountId</code></td>
<td><p>The ID of the Amazon Web Services account.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Recommendations = list(
        list(
          Description = "string",
          Link = "string",
          Name = "string",
          Reason = "string",
          RelatedEvents = list(
            list(
              Name = "string",
              Resources = list(
                list(
                  Name = "string",
                  Type = "string"
                )
              )
            )
          ),
          RelatedAnomalies = list(
            list(
              Resources = list(
                list(
                  Name = "string",
                  Type = "string"
                )
              ),
              SourceDetails = list(
                list(
                  CloudWatchMetrics = list(
                    list(
                      MetricName = "string",
                      Namespace = "string"
                    )
                  )
                )
              ),
              AnomalyId = "string"
            )
          ),
          Category = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_recommendations(
      InsightId = "string",
      NextToken = "string",
      Locale = "DE_DE"|"EN_US"|"EN_GB"|"ES_ES"|"FR_FR"|"IT_IT"|"JA_JP"|"KO_KR"|"PT_BR"|"ZH_CN"|"ZH_TW",
      AccountId = "string"
    )
