<template>
    <!-- BEGIN NAVIGATION -->
    <nav class="navbar navbar-expand-sm navbar-dark bg-primary sticky-top">
        <div class="container">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbar">
                <!-- BEGIN PRIMARY NAVIGATION -->
                <ul class="navbar-nav me-auto">
                    <li class="nav-item">
                        <router-link :to="{ name: 'Home' }" class="nav-link" active-class="active"><strong>Duck, Duck, Goose!</strong></router-link>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="https://polygonscan.com/address/0xdC96bD307bAf3418B3e5E0d16b03e4e2b4da0281" target="_new">Contract</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="https://opensea.io/collection/duck-duck-goose-nft" target="_new">OpenSea</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="https://duckduckgoose.club/discord" target="_new">Discord</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Twitter" target="_new">Twitter</a>
                    </li>
                </ul>
                <!-- END PRIMARY NAVIGATION -->
            </div>
            <div class="d-flex">
                <!-- BEGIN WALLET BUTTONS -->
                <button v-show="!connected" class="btn btn-lg btn-success mx-1 col-12" data-bs-toggle="modal" data-bs-target="#connect">Connect Wallet</button>
                <button v-show="connected" class="btn btn-lg btn-warning mx-1 col-12" data-bs-toggle="modal" data-bs-target="#mint"><strong>MINT NOW</strong></button>
                <!-- END WALLET BUTTONS -->
            </div>
        </div>
    </nav>
    <!-- END NAVIGATION -->

    <!-- HEADER IMAGE -->
    <div class="container-fluid header-container"></div>
    <!-- END HEADER IMAGE -->

    <!-- BEGIN NOTICES -->
    <div v-show="notice" class="alert alert-success alert-dismissible fade show" role="alert">
        {{ notice }}
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    <div v-show="alert" class="alert alert-danger alert-dismissible fade show" role="alert">
        {{ alert }}
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    <!-- END NOTICES -->

    <!-- BEGIN PAGE CONTENT -->
    <div class="container mt-5 mb-5">
        <router-view/>
    </div>
    <!-- END PAGE CONTENT -->

    <!-- BEGIN FOOTER CONTENT -->

    <!-- END FOOTER CONTENT -->

    <!-- BEGIN CONNECT WALLET MODAL -->
    <div class="modal fade" id="connect" tabindex="-1" aria-labelledby="connectLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Connect Your Polygon Wallet</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md text-center">
                            <meta-mask type="button" data-bs-dismiss="modal" ref="meta-mask">
                                <img class="img-fluid" src="/images/metamask.svg" alt="metamask">
                            </meta-mask>
                        </div>
                        <div class="col-md text-center">
                            <wallet-connect :rpc="infuraRpc" type="button" data-bs-dismiss="modal" rpc="" ref="wallet-connect">
                                <img class="img-fluid" src="/images/walletconnect.svg" alt="walletconnect">
                            </wallet-connect>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END CONNECT WALLET MODAL -->

    <!-- BEGIN MINT MODAL -->
    <div class="modal fade" id="mint" tabindex="-1" aria-labelledby="connectLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Mint Your Egg</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <label class="visually-hidden" for="quantity">Quantity</label>
                    <div class="input-group">
                        <input type="number" class="form-control col-2" id="quantity" min="1" v-model="quantity">
                        <button class="btn btn-lg btn-success col-10" @click="mint" :disabled="mint_button_disabled" data-bs-dismiss="modal">Mint ({{ totalCost }} MATIC)</button>
                    </div>
                    <div class="carousel slide text-center text-secondary" data-bs-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <small>The current prize for hatching a <strong class="text-success">goose</strong> is <strong class="text-dark"><i>{{ prizeBank }} MATIC</i></strong>!</small>
                            </div>
                            <div class="carousel-item">
                                <small>The prize <strong class="text-dark"><i>increases with every mint</i></strong> until the <strong class="text-success">eggs</strong> are hatched!</small>
                            </div>
                            <div class="carousel-item">
                                <small><strong class="text-dark"><i>{{ ducks }}</i></strong> <strong class="text-success">ducks</strong> have been hatched so far!</small>
                            </div>
                            <div class="carousel-item">
                                <small><strong class="text-dark"><i>{{ geese }}</i></strong> <strong class="text-success">geese</strong> have been hatched so far!</small>
                            </div>
                            <div class="carousel-item">
                                <small>only <strong class="text-dark"><i>{{ hatchCycle - eggs }}</i></strong> mints left before the next <strong class="text-success">hatch</strong>!</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END MINT MODAL -->
</template>

<script>
    import Disconnect from "./components/Disconnect.vue";
    import Login from "./components/Login.vue";
    import MetaMask from "./components/wallets/MetaMask.vue";
    import WalletConnect from "./components/wallets/WalletConnect.vue";
    import Web3 from "web3";
    export default {
        components: {
            'disconnect': Disconnect,
            'login': Login,
            'meta-mask': MetaMask,
            'wallet-connect': WalletConnect,
        },
        props: [
            'networkId',
            'networkName',
            'contractAddress',
            'contractAbi',
            'infuraRpc',
        ],
        data() {
            return {
                notice: null,
                alert: null,
                wallet: null,
                web3: new Web3(),
                contract: null,
                account: null,
                address: null,
                connected: false,
                loggedIn: false,
                quantity: 1,
                mint_button_disabled: false,
                txid: null,
                price: null,
                eggs: null,
                ducks: null,
                geese: null,
                hatchCycle: null,
                prizeBank: null,
            }
        },
        computed: {
            shortAccount: function () {
                if(!this.account) {
                    return null;
                }
                return this.account.substr(0, 6) + "..." + this.account.substr(-4);
            },
            priceInEth: function () {
                if(!this.price) {
                    return null;
                }
                return this.web3.utils.fromWei(this.price, 'ether');
            },
            totalCost: function () {
                if(!this.price) {
                    return null;
                }
                return Math.round(this.quantity * this.priceInEth * 10000) / 10000;
            }
        },
        mounted() {
            this.getSession();
            this.ping();
        },
        methods: {
            async ping() {
                var ping = this;
                setInterval(async function () {
                    if(!ping.account) {
                        return;
                    }
                    if(typeof ping.web3.eth == 'undefined') {
                        return;
                    }
                    const accounts = await ping.web3.eth.getAccounts();
                    if(!accounts.length) {
                        return ping.disconnect();
                    }
                    if(accounts[0] != ping.account) {
                        return ping.disconnect();
                    }
                    const connectedId = await ping.web3.eth.net.getId();
                    if(connectedId != ping.networkId) {
                        ping.alert = 'Incorrect network. Please connect to ' + ping.networkName;
                        return ping.disconnect();
                    }
                    if(!this.price) {
                        ping.getData();
                    }
                }, 1000);
            },
            async getSession() {
                await axios.get('/api/v1/session').then(response => {
                    this.wallet = response.data.wallet;
                    if(typeof this.wallet != 'undefined') {
                        this.$refs[this.wallet].connect();
                    }
                    this.account = response.data.account;
                    this.address = response.data.address;
                    this.connected = response.data.connected;
                    this.loggedIn = response.data.loggedIn;
                }).catch(error => {});
            },
            async updateSession() {
                await axios.post('/api/v1/session', {
                    wallet: this.wallet,
                    account: this.account,
                    address: this.address,
                    connected: this.connected,
                    loggedIn: this.loggedIn,
                }).then(response => {
                }).catch(error => {
                });
            },
            async connect() {
                try {
                    this.alert = null;
                    await this.web3.currentProvider.enable();
                    const accounts = await this.web3.eth.getAccounts();
                    this.account = accounts[0];
                    this.contract = new this.web3.eth.Contract(JSON.parse(this.contractAbi), this.contractAddress);
                    this.connected = true;
                    await axios.post('/api/v1/address', {
                        address: this.account,
                    }).then(response => {
                        this.address = response.data.data;
                    }).catch(error => {});
                    this.updateSession();
                } catch (error) {
                    this.alert = error.message;
                    return false;
                }
                this.notice = null;
            },
            async getData() {
                try {
                    this.price = await this.contract.methods.price().call();
                    this.eggs = await this.contract.methods.eggs().call();
                    this.ducks = await this.contract.methods.ducks().call();
                    this.geese = await this.contract.methods.geese().call();
                    this.hatchCycle = await this.contract.methods.hatchCycle().call();
                    this.prizeBank = await this.web3.utils.fromWei(await this.contract.methods.prizeBank().call(), 'ether');
                } catch(error) {
                    this.alert = error.message;
                }
            },
            async login() {
                if(typeof this.address.attributes == 'undefined') {
                    this.alert = 'You must connect your wallet to log in';
                    return false;
                }
                this.notice = 'Waiting on response from wallet';
                const signature = await this.web3.eth.personal.sign(this.address.attributes.nonce, this.address.attributes.address, "");
                await axios.post('/api/v1/login', {
                    address: this.address.attributes.address,
                    nonce: this.address.attributes.nonce,
                    signature: signature,
                }).then(response => {
                    this.loggedIn = true;
                    this.address = response.data.data;
                }).catch(error => {});
                this.updateSession();
                this.notice = null;
            },
            async disconnect() {
                try {
                    this.web3.currentProvider.close();
                    this.web3.currentProvider.disconnect();
                } catch (error) {}
                this.account = null;
                this.address = null;
                this.connected = false;
                this.loggedIn = false;
                await axios.post('/api/v1/logout');
            },
            async mint() {
                this.mint_button_disabled = true;
                this.notice = null;
                this.alert = 'Waiting on response form wallet';
                try {
                    const gasPrice = await this.web3.eth.getGasPrice();
                    const result = await this.contract.methods.mint(this.quantity).send({ value: this.price * this.quantity, from: this.account, gasPrice: gasPrice });
                    this.notice = 'Success! Transaction hash: ' + result.transactionHash;
                    this.alert = null;
                    this.mint_button_disabled = false;
                    this.getData();
                } catch (error) {
                    this.alert = error.message;
                    this.mint_button_disabled = false;
                }
            }
        }
    }
</script>
