<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>machinelearning_describe_evaluations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of DescribeEvaluations that match the search criteria in the request

### Description

Returns a list of `describe_evaluations` that match the search criteria
in the request.

### Usage

    machinelearning_describe_evaluations(FilterVariable, EQ, GT, LT, GE, LE,
      NE, Prefix, SortOrder, NextToken, Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="machinelearning_describe_evaluations_:_FilterVariable">FilterVariable</code></td>
<td><p>Use one of the following variable to filter a list of
<code>Evaluation</code> objects:</p>
<ul>
<li><p><code>CreatedAt</code> - Sets the search criteria to the
<code>Evaluation</code> creation date.</p></li>
<li><p><code>Status</code> - Sets the search criteria to the
<code>Evaluation</code> status.</p></li>
<li><p><code>Name</code> - Sets the search criteria to the contents of
<code>Evaluation</code> <code>Name</code>.</p></li>
<li><p><code>IAMUser</code> - Sets the search criteria to the user
account that invoked an <code>Evaluation</code>.</p></li>
<li><p><code>MLModelId</code> - Sets the search criteria to the
<code>MLModel</code> that was evaluated.</p></li>
<li><p><code>DataSourceId</code> - Sets the search criteria to the
<code>DataSource</code> used in <code>Evaluation</code>.</p></li>
<li><p><code>DataUri</code> - Sets the search criteria to the data
file(s) used in <code>Evaluation</code>. The URL can identify either a
file or an Amazon Simple Storage Solution (Amazon S3) bucket or
directory.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="machinelearning_describe_evaluations_:_EQ">EQ</code></td>
<td><p>The equal to operator. The <code>Evaluation</code> results will
have <code>FilterVariable</code> values that exactly match the value
specified with <code>EQ</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="machinelearning_describe_evaluations_:_GT">GT</code></td>
<td><p>The greater than operator. The <code>Evaluation</code> results
will have <code>FilterVariable</code> values that are greater than the
value specified with <code>GT</code>.</p></td>
</tr>
<tr class="even">
<td><code id="machinelearning_describe_evaluations_:_LT">LT</code></td>
<td><p>The less than operator. The <code>Evaluation</code> results will
have <code>FilterVariable</code> values that are less than the value
specified with <code>LT</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="machinelearning_describe_evaluations_:_GE">GE</code></td>
<td><p>The greater than or equal to operator. The
<code>Evaluation</code> results will have <code>FilterVariable</code>
values that are greater than or equal to the value specified with
<code>GE</code>.</p></td>
</tr>
<tr class="even">
<td><code id="machinelearning_describe_evaluations_:_LE">LE</code></td>
<td><p>The less than or equal to operator. The <code>Evaluation</code>
results will have <code>FilterVariable</code> values that are less than
or equal to the value specified with <code>LE</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="machinelearning_describe_evaluations_:_NE">NE</code></td>
<td><p>The not equal to operator. The <code>Evaluation</code> results
will have <code>FilterVariable</code> values not equal to the value
specified with <code>NE</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="machinelearning_describe_evaluations_:_Prefix">Prefix</code></td>
<td><p>A string that is found at the beginning of a variable, such as
<code>Name</code> or <code>Id</code>.</p>
<p>For example, an <code>Evaluation</code> could have the
<code>Name</code> <code>2014-09-09-HolidayGiftMailer</code>. To search
for this <code>Evaluation</code>, select <code>Name</code> for the
<code>FilterVariable</code> and any of the following strings for the
<code>Prefix</code>:</p>
<ul>
<li><p>2014-09</p></li>
<li><p>2014-09-09</p></li>
<li><p>2014-09-09-Holiday</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="machinelearning_describe_evaluations_:_SortOrder">SortOrder</code></td>
<td><p>A two-value parameter that determines the sequence of the
resulting list of <code>Evaluation</code>.</p>
<ul>
<li><p><code>asc</code> - Arranges the list in ascending order (A-Z,
0-9).</p></li>
<li><p><code>dsc</code> - Arranges the list in descending order (Z-A,
9-0).</p></li>
</ul>
<p>Results are sorted by <code>FilterVariable</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="machinelearning_describe_evaluations_:_NextToken">NextToken</code></td>
<td><p>The ID of the page in the paginated results.</p></td>
</tr>
<tr class="odd">
<td><code
id="machinelearning_describe_evaluations_:_Limit">Limit</code></td>
<td><p>The maximum number of <code>Evaluation</code> to include in the
result.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Results = list(
        list(
          EvaluationId = "string",
          MLModelId = "string",
          EvaluationDataSourceId = "string",
          InputDataLocationS3 = "string",
          CreatedByIamUser = "string",
          CreatedAt = as.POSIXct(
            "2015-01-01"
          ),
          LastUpdatedAt = as.POSIXct(
            "2015-01-01"
          ),
          Name = "string",
          Status = "PENDING"|"INPROGRESS"|"FAILED"|"COMPLETED"|"DELETED",
          PerformanceMetrics = list(
            Properties = list(
              "string"
            )
          ),
          Message = "string",
          ComputeTime = 123,
          FinishedAt = as.POSIXct(
            "2015-01-01"
          ),
          StartedAt = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_evaluations(
      FilterVariable = "CreatedAt"|"LastUpdatedAt"|"Status"|"Name"|"IAMUser"|"MLModelId"|"DataSourceId"|"DataURI",
      EQ = "string",
      GT = "string",
      LT = "string",
      GE = "string",
      LE = "string",
      NE = "string",
      Prefix = "string",
      SortOrder = "asc"|"dsc",
      NextToken = "string",
      Limit = 123
    )
