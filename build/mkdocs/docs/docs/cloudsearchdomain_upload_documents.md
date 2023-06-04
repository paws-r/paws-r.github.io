<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudsearchdomain_upload_documents</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Posts a batch of documents to a search domain for indexing

### Description

Posts a batch of documents to a search domain for indexing. A document
batch is a collection of add and delete operations that represent the
documents you want to add, update, or delete from your domain. Batches
can be described in either JSON or XML. Each item that you want Amazon
CloudSearch to return as a search result (such as a product) is
represented as a document. Every document has a unique ID and one or
more fields that contain the data that you want to search and return in
results. Individual documents cannot contain more than 1 MB of data. The
entire batch cannot exceed 5 MB. To get the best possible upload
performance, group add and delete operations in batches that are close
the 5 MB limit. Submitting a large volume of single-document batches can
overload a domain's document service.

The endpoint for submitting `upload_documents` requests is
domain-specific. To get the document endpoint for your domain, use the
Amazon CloudSearch configuration service `DescribeDomains` action. A
domain's endpoints are also displayed on the domain dashboard in the
Amazon CloudSearch console.

For more information about formatting your data for Amazon CloudSearch,
see [Preparing Your
Data](https://docs.aws.amazon.com/cloudsearch/latest/developerguide/preparing-data.html)
in the *Amazon CloudSearch Developer Guide*. For more information about
uploading data for indexing, see [Uploading
Data](https://docs.aws.amazon.com/cloudsearch/latest/developerguide/uploading-data.html)
in the *Amazon CloudSearch Developer Guide*.

### Usage

    cloudsearchdomain_upload_documents(documents, contentType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudsearchdomain_upload_documents_:_documents">documents</code></td>
<td><p>[required] A batch of documents formatted in JSON or
HTML.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudsearchdomain_upload_documents_:_contentType">contentType</code></td>
<td><p>[required] The format of the batch you are uploading. Amazon
CloudSearch supports two document batch formats:</p>
<ul>
<li><p>application/json</p></li>
<li><p>application/xml</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      status = "string",
      adds = 123,
      deletes = 123,
      warnings = list(
        list(
          message = "string"
        )
      )
    )

### Request syntax

    svc$upload_documents(
      documents = raw,
      contentType = "application/json"|"application/xml"
    )
