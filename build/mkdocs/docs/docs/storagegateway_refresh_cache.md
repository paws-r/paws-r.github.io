<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_refresh_cache</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Refreshes the cached inventory of objects for the specified file share

### Description

Refreshes the cached inventory of objects for the specified file share.
This operation finds objects in the Amazon S3 bucket that were added,
removed, or replaced since the gateway last listed the bucket's contents
and cached the results. This operation does not import files into the S3
File Gateway cache storage. It only updates the cached inventory to
reflect changes in the inventory of the objects in the S3 bucket. This
operation is only supported in the S3 File Gateway types.

You can subscribe to be notified through an Amazon CloudWatch event when
your `refresh_cache` operation completes. For more information, see
[Getting notified about file
operations](https://docs.aws.amazon.com/storagegateway/index.html#get-notification)
in the *Storage Gateway User Guide*. This operation is Only supported
for S3 File Gateways.

When this API is called, it only initiates the refresh operation. When
the API call completes and returns a success code, it doesn't
necessarily mean that the file refresh has completed. You should use the
refresh-complete notification to determine that the operation has
completed before you check for new files on the gateway file share. You
can subscribe to be notified through a CloudWatch event when your
`refresh_cache` operation completes.

Throttle limit: This API is asynchronous, so the gateway will accept no
more than two refreshes at any time. We recommend using the
refresh-complete CloudWatch event notification before issuing additional
requests. For more information, see [Getting notified about file
operations](https://docs.aws.amazon.com/storagegateway/index.html#get-notification)
in the *Storage Gateway User Guide*.

-   Wait at least 60 seconds between consecutive RefreshCache API
    requests.

-   RefreshCache does not evict cache entries if invoked consecutively
    within 60 seconds of a previous RefreshCache request.

-   If you invoke the RefreshCache API when two requests are already
    being processed, any new request will cause an
    `InvalidGatewayRequestException` error because too many requests
    were sent to the server.

The S3 bucket name does not need to be included when entering the list
of folders in the FolderList parameter.

For more information, see [Getting notified about file
operations](https://docs.aws.amazon.com/storagegateway/index.html#get-notification)
in the *Storage Gateway User Guide*.

### Usage

    storagegateway_refresh_cache(FileShareARN, FolderList, Recursive)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_refresh_cache_:_FileShareARN">FileShareARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the file share you
want to refresh.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_refresh_cache_:_FolderList">FolderList</code></td>
<td><p>A comma-separated list of the paths of folders to refresh in the
cache. The default is [<code>"/"</code>]. The default refreshes objects
and folders at the root of the Amazon S3 bucket. If
<code>Recursive</code> is set to <code>true</code>, the entire S3 bucket
that the file share has access to is refreshed.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_refresh_cache_:_Recursive">Recursive</code></td>
<td><p>A value that specifies whether to recursively refresh folders in
the cache. The refresh includes folders that were in the cache the last
time the gateway listed the folder's contents. If this value set to
<code>true</code>, each folder that is listed in <code>FolderList</code>
is recursively updated. Otherwise, subfolders listed in
<code>FolderList</code> are not refreshed. Only objects that are in
folders listed directly under <code>FolderList</code> are found and used
for the update. The default is <code>true</code>.</p>
<p>Valid Values: <code>true</code> | <code>false</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FileShareARN = "string",
      NotificationId = "string"
    )

### Request syntax

    svc$refresh_cache(
      FileShareARN = "string",
      FolderList = list(
        "string"
      ),
      Recursive = TRUE|FALSE
    )
