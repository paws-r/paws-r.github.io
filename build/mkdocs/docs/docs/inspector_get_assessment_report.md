<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector_get_assessment_report</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Produces an assessment report that includes detailed and comprehensive results of a specified assessment run

### Description

Produces an assessment report that includes detailed and comprehensive
results of a specified assessment run.

### Usage

    inspector_get_assessment_report(assessmentRunArn, reportFileFormat,
      reportType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector_get_assessment_report_:_assessmentRunArn">assessmentRunArn</code></td>
<td><p>[required] The ARN that specifies the assessment run for which
you want to generate a report.</p></td>
</tr>
<tr class="even">
<td><code
id="inspector_get_assessment_report_:_reportFileFormat">reportFileFormat</code></td>
<td><p>[required] Specifies the file format (html or pdf) of the
assessment report that you want to generate.</p></td>
</tr>
<tr class="odd">
<td><code
id="inspector_get_assessment_report_:_reportType">reportType</code></td>
<td><p>[required] Specifies the type of the assessment report that you
want to generate. There are two types of assessment reports: a finding
report and a full report. For more information, see <a
href="https://docs.aws.amazon.com/inspector/v1/userguide/inspector_reports.html">Assessment
Reports</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      status = "WORK_IN_PROGRESS"|"FAILED"|"COMPLETED",
      url = "string"
    )

### Request syntax

    svc$get_assessment_report(
      assessmentRunArn = "string",
      reportFileFormat = "HTML"|"PDF",
      reportType = "FINDING"|"FULL"
    )
