<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="tag-manager-container-id" content="{{ $tagManagerContainerId }}">
        <meta name="network-id" content="{{ $networkId }}">
        <meta name="network-name" content="{{ $networkName }}">
        <meta name="contract-address" content="{{ $contractAddress }}">
        <meta name="contract-abi" content="{{ $contractAbi }}">
        <link href="https://fonts.googleapis.com" rel="preconnect">
        <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
        <link href="{{ mix('css/app.css') }}" rel="stylesheet">
        <title>{{ config('app.name') }}</title>
    </head>
    <body>
        <div id="app">

        </div>
        <script src="{{ mix('js/main.js') }}"></script>
    </body>
</html>
