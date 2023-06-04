<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codebuild_describe_test_cases</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of details about test cases for a report

### Description

Returns a list of details about test cases for a report.

### Usage

    codebuild_describe_test_cases(reportArn, nextToken, maxResults, filter)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codebuild_describe_test_cases_:_reportArn">reportArn</code></td>
<td><p>[required] The ARN of the report for which test cases are
returned.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_describe_test_cases_:_nextToken">nextToken</code></td>
<td><p>During a previous call, the maximum number of items that can be
returned is the value specified in <code>maxResults</code>. If there
more items in the list, then a unique string called a <em>nextToken</em>
is returned. To get the next batch of items in the list, call this
operation again, adding the next token to the call. To get all of the
items in the list, keep calling this operation with each subsequent next
token that is returned, until no more next tokens are returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_describe_test_cases_:_maxResults">maxResults</code></td>
<td><p>The maximum number of paginated test cases returned per response.
Use <code>nextToken</code> to iterate pages in the list of returned
<code>TestCase</code> objects. The default value is 100.</p></td>
</tr>
<tr class="even">
<td><code id="codebuild_describe_test_cases_:_filter">filter</code></td>
<td><p>A <code>TestCaseFilter</code> object used to filter the returned
reports.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      testCases = list(
        list(
          reportArn = "string",
          testRawDataPath = "string",
          prefix = "string",
          name = "string",
          status = "string",
          durationInNanoSeconds = 123,
          message = "string",
          expired = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$describe_test_cases(
      reportArn = "string",
      nextToken = "string",
      maxResults = 123,
      filter = list(
        status = "string",
        keyword = "string"
      )
    )
