<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_describe_loa</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the LOA-CFA for a connection, interconnect, or link aggregation group (LAG)

### Description

Gets the LOA-CFA for a connection, interconnect, or link aggregation
group (LAG).

The Letter of Authorization - Connecting Facility Assignment (LOA-CFA)
is a document that is used when establishing your cross connect to
Amazon Web Services at the colocation facility. For more information,
see [Requesting Cross Connects at Direct Connect
Locations](https://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html)
in the *Direct Connect User Guide*.

### Usage

    directconnect_describe_loa(connectionId, providerName, loaContentType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_describe_loa_:_connectionId">connectionId</code></td>
<td><p>[required] The ID of a connection, LAG, or interconnect.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_describe_loa_:_providerName">providerName</code></td>
<td><p>The name of the service provider who establishes connectivity on
your behalf. If you specify this parameter, the LOA-CFA lists the
provider name alongside your company name as the requester of the cross
connect.</p></td>
</tr>
<tr class="odd">
<td><code
id="directconnect_describe_loa_:_loaContentType">loaContentType</code></td>
<td><p>The standard media type for the LOA-CFA document. The only
supported value is application/pdf.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      loaContent = raw,
      loaContentType = "application/pdf"
    )

### Request syntax

    svc$describe_loa(
      connectionId = "string",
      providerName = "string",
      loaContentType = "application/pdf"
    )
