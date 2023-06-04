<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_get_finding_statistics</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves (queries) aggregated statistical data about findings

### Description

Retrieves (queries) aggregated statistical data about findings.

### Usage

    macie2_get_finding_statistics(findingCriteria, groupBy, size,
      sortCriteria)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie2_get_finding_statistics_:_findingCriteria">findingCriteria</code></td>
<td><p>The criteria to use to filter the query results.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_get_finding_statistics_:_groupBy">groupBy</code></td>
<td><p>[required] The finding property to use to group the query
results. Valid values are:</p>
<ul>
<li><p>classificationDetails.jobId - The unique identifier for the
classification job that produced the finding.</p></li>
<li><p>resourcesAffected.s3Bucket.name - The name of the S3 bucket that
the finding applies to.</p></li>
<li><p>severity.description - The severity level of the finding, such as
High or Medium.</p></li>
<li><p>type - The type of finding, such as Policy:IAMUser/S3BucketPublic
and SensitiveData:S3Object/Personal.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code id="macie2_get_finding_statistics_:_size">size</code></td>
<td><p>The maximum number of items to include in each page of the
response.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_get_finding_statistics_:_sortCriteria">sortCriteria</code></td>
<td><p>The criteria to use to sort the query results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      countsByGroup = list(
        list(
          count = 123,
          groupKey = "string"
        )
      )
    )

### Request syntax

    svc$get_finding_statistics(
      findingCriteria = list(
        criterion = list(
          list(
            eq = list(
              "string"
            ),
            eqExactMatch = list(
              "string"
            ),
            gt = 123,
            gte = 123,
            lt = 123,
            lte = 123,
            neq = list(
              "string"
            )
          )
        )
      ),
      groupBy = "resourcesAffected.s3Bucket.name"|"type"|"classificationDetails.jobId"|"severity.description",
      size = 123,
      sortCriteria = list(
        attributeName = "groupKey"|"count",
        orderBy = "ASC"|"DESC"
      )
    )
