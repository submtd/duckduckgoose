<?php

namespace App\Http\Controllers;

use Illuminate\Routing\Controller;

class App extends Controller
{
    /**
     * Invoke.
     */
    public function __invoke()
    {
        return view('app', [
            'tagManagerContainerId' => config('app.tag_manager_container_id'),
            'networkId' => config('app.network_id', 4),
            'networkName' => config('app.network_name', 'Rinkeby Testnet'),
            'contractAddress' => config('app.contract_address'),
            'contractAbi' => config('app.contract_abi'),
            'infuraRpc' => config('app.infura_rpc'),
        ]);
    }
}
