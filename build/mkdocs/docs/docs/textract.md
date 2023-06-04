<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>textract</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Textract

### Description

Amazon Textract detects and analyzes text in documents and converts it
into machine-readable text. This is the API reference documentation for
Amazon Textract.

### Usage

    textract(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="textract_:_config">config</code></td>
<td><p>Optional configuration of credentials, endpoint, and/or
region.</p>
<ul>
<li><p><strong>access_key_id</strong>: AWS access key ID</p></li>
<li><p><strong>secret_access_key</strong>: AWS secret access
key</p></li>
<li><p><strong>session_token</strong>: AWS temporary session
token</p></li>
<li><p><strong>profile</strong>: The name of a profile to use. If not
given, then the default profile is used.</p></li>
<li><p><strong>anonymous</strong>: Set anonymous credentials.</p></li>
<li><p><strong>endpoint</strong>: The complete URL to use for the
constructed client.</p></li>
<li><p><strong>region</strong>: The AWS Region used in instantiating the
client.</p></li>
<li><p><strong>close_connection</strong>: Immediately close all HTTP
connections.</p></li>
<li><p><strong>timeout</strong>: The time in seconds till a timeout
exception is thrown when attempting to make a connection. The default is
60 seconds.</p></li>
<li><p><strong>s3_force_path_style</strong>: Set this to
<code>true</code> to force the request to use path-style addressing,
i.e., <code
style="white-space: pre;">⁠http://s3.amazonaws.com/BUCKET/KEY⁠</code>.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A client for the service. You can call the service's operations using
syntax like `svc$operation(...)`, where `svc` is the name you've
assigned to the client. The available operations are listed in the
Operations section.

### Service syntax

    svc <- textract(
      config = list(
        credentials = list(
          creds = list(
            access_key_id = "string",
            secret_access_key = "string",
            session_token = "string"
          ),
          profile = "string",
          anonymous = "logical"
        ),
        endpoint = "string",
        region = "string",
        close_connection = "logical",
        timeout = "numeric",
        s3_force_path_style = "logical"
      )
    )

### Operations

<table>
<tbody>
<tr class="odd">
<td style="text-align: left;"><a href="../textract_analyze_document/"> analyze_document </a></td>
<td style="text-align: left;">Analyzes an input document for
relationships between detected items</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../textract_analyze_expense/"> analyze_expense </a></td>
<td style="text-align: left;">AnalyzeExpense synchronously analyzes an
input document for financially related relationships between text</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../textract_analyze_id/"> analyze_id </a></td>
<td style="text-align: left;">Analyzes identity documents for relevant
information</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../textract_detect_document_text/"> detect_document_text </a></td>
<td style="text-align: left;">Detects text in the input document</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../textract_get_document_analysis/"> get_document_analysis </a></td>
<td style="text-align: left;">Gets the results for an Amazon Textract
asynchronous operation that analyzes text in a document</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../textract_get_document_text_detection/"> get_document_text_detection </a></td>
<td style="text-align: left;">Gets the results for an Amazon Textract
asynchronous operation that detects text in a document</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../textract_get_expense_analysis/"> get_expense_analysis </a></td>
<td style="text-align: left;">Gets the results for an Amazon Textract
asynchronous operation that analyzes invoices and receipts</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../textract_get_lending_analysis/"> get_lending_analysis </a></td>
<td style="text-align: left;">Gets the results for an Amazon Textract
asynchronous operation that analyzes text in a lending document</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../textract_get_lending_analysis_summary/"> get_lending_analysis_summary </a></td>
<td style="text-align: left;">Gets summarized results for the
StartLendingAnalysis operation, which analyzes text in a lending
document</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../textract_start_document_analysis/"> start_document_analysis </a></td>
<td style="text-align: left;">Starts the asynchronous analysis of an
input document for relationships between detected items such as
key-value pairs, tables, and selection elements</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../textract_start_document_text_detection/"> start_document_text_detection </a></td>
<td style="text-align: left;">Starts the asynchronous detection of text
in a document</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../textract_start_expense_analysis/"> start_expense_analysis </a></td>
<td style="text-align: left;">Starts the asynchronous analysis of
invoices or receipts for data like contact information, items purchased,
and vendor names</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../textract_start_lending_analysis/"> start_lending_analysis </a></td>
<td style="text-align: left;">Starts the classification and analysis of
an input document</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- textract()
    svc$analyze_document(
      Foo = 123
    )

    ## End(Not run)
