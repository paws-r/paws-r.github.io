<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevidently_test_segment_pattern</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Use this operation to test a rules pattern that you plan to use to create an audience segment

### Description

Use this operation to test a rules pattern that you plan to use to
create an audience segment. For more information about segments, see
`create_segment`.

### Usage

    cloudwatchevidently_test_segment_pattern(pattern, payload)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevidently_test_segment_pattern_:_pattern">pattern</code></td>
<td><p>[required] The pattern to test.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_test_segment_pattern_:_payload">payload</code></td>
<td><p>[required] A sample <code>evaluationContext</code> JSON block to
test against the specified pattern.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      match = TRUE|FALSE
    )

### Request syntax

    svc$test_segment_pattern(
      pattern = "string",
      payload = "string"
    )
