<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>machinelearning_describe_ml_models</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of MLModel that match the search criteria in the request

### Description

Returns a list of `MLModel` that match the search criteria in the
request.

### Usage

    machinelearning_describe_ml_models(FilterVariable, EQ, GT, LT, GE, LE,
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
id="machinelearning_describe_ml_models_:_FilterVariable">FilterVariable</code></td>
<td><p>Use one of the following variables to filter a list of
<code>MLModel</code>:</p>
<ul>
<li><p><code>CreatedAt</code> - Sets the search criteria to
<code>MLModel</code> creation date.</p></li>
<li><p><code>Status</code> - Sets the search criteria to
<code>MLModel</code> status.</p></li>
<li><p><code>Name</code> - Sets the search criteria to the contents of
<code>MLModel</code> <code>Name</code>.</p></li>
<li><p><code>IAMUser</code> - Sets the search criteria to the user
account that invoked the <code>MLModel</code> creation.</p></li>
<li><p><code>TrainingDataSourceId</code> - Sets the search criteria to
the <code>DataSource</code> used to train one or more
<code>MLModel</code>.</p></li>
<li><p><code>RealtimeEndpointStatus</code> - Sets the search criteria to
the <code>MLModel</code> real-time endpoint status.</p></li>
<li><p><code>MLModelType</code> - Sets the search criteria to
<code>MLModel</code> type: binary, regression, or multi-class.</p></li>
<li><p><code>Algorithm</code> - Sets the search criteria to the
algorithm that the <code>MLModel</code> uses.</p></li>
<li><p><code>TrainingDataURI</code> - Sets the search criteria to the
data file(s) used in training a <code>MLModel</code>. The URL can
identify either a file or an Amazon Simple Storage Service (Amazon S3)
bucket or directory.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="machinelearning_describe_ml_models_:_EQ">EQ</code></td>
<td><p>The equal to operator. The <code>MLModel</code> results will have
<code>FilterVariable</code> values that exactly match the value
specified with <code>EQ</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="machinelearning_describe_ml_models_:_GT">GT</code></td>
<td><p>The greater than operator. The <code>MLModel</code> results will
have <code>FilterVariable</code> values that are greater than the value
specified with <code>GT</code>.</p></td>
</tr>
<tr class="even">
<td><code id="machinelearning_describe_ml_models_:_LT">LT</code></td>
<td><p>The less than operator. The <code>MLModel</code> results will
have <code>FilterVariable</code> values that are less than the value
specified with <code>LT</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="machinelearning_describe_ml_models_:_GE">GE</code></td>
<td><p>The greater than or equal to operator. The <code>MLModel</code>
results will have <code>FilterVariable</code> values that are greater
than or equal to the value specified with <code>GE</code>.</p></td>
</tr>
<tr class="even">
<td><code id="machinelearning_describe_ml_models_:_LE">LE</code></td>
<td><p>The less than or equal to operator. The <code>MLModel</code>
results will have <code>FilterVariable</code> values that are less than
or equal to the value specified with <code>LE</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="machinelearning_describe_ml_models_:_NE">NE</code></td>
<td><p>The not equal to operator. The <code>MLModel</code> results will
have <code>FilterVariable</code> values not equal to the value specified
with <code>NE</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="machinelearning_describe_ml_models_:_Prefix">Prefix</code></td>
<td><p>A string that is found at the beginning of a variable, such as
<code>Name</code> or <code>Id</code>.</p>
<p>For example, an <code>MLModel</code> could have the <code>Name</code>
<code>2014-09-09-HolidayGiftMailer</code>. To search for this
<code>MLModel</code>, select <code>Name</code> for the
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
id="machinelearning_describe_ml_models_:_SortOrder">SortOrder</code></td>
<td><p>A two-value parameter that determines the sequence of the
resulting list of <code>MLModel</code>.</p>
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
id="machinelearning_describe_ml_models_:_NextToken">NextToken</code></td>
<td><p>The ID of the page in the paginated results.</p></td>
</tr>
<tr class="odd">
<td><code
id="machinelearning_describe_ml_models_:_Limit">Limit</code></td>
<td><p>The number of pages of information to include in the result. The
range of acceptable values is <code>1</code> through <code>100</code>.
The default value is <code>100</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Results = list(
        list(
          MLModelId = "string",
          TrainingDataSourceId = "string",
          CreatedByIamUser = "string",
          CreatedAt = as.POSIXct(
            "2015-01-01"
          ),
          LastUpdatedAt = as.POSIXct(
            "2015-01-01"
          ),
          Name = "string",
          Status = "PENDING"|"INPROGRESS"|"FAILED"|"COMPLETED"|"DELETED",
          SizeInBytes = 123,
          EndpointInfo = list(
            PeakRequestsPerSecond = 123,
            CreatedAt = as.POSIXct(
              "2015-01-01"
            ),
            EndpointUrl = "string",
            EndpointStatus = "NONE"|"READY"|"UPDATING"|"FAILED"
          ),
          TrainingParameters = list(
            "string"
          ),
          InputDataLocationS3 = "string",
          Algorithm = "sgd",
          MLModelType = "REGRESSION"|"BINARY"|"MULTICLASS",
          ScoreThreshold = 123.0,
          ScoreThresholdLastUpdatedAt = as.POSIXct(
            "2015-01-01"
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

    svc$describe_ml_models(
      FilterVariable = "CreatedAt"|"LastUpdatedAt"|"Status"|"Name"|"IAMUser"|"TrainingDataSourceId"|"RealtimeEndpointStatus"|"MLModelType"|"Algorithm"|"TrainingDataURI",
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
