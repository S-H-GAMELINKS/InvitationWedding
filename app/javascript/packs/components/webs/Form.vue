<template>
    <div class="container">
        <h1>Invitation Wedding Form</h1>

        <div class="input-group">
            <div class="input-group-append">
                <span class="input-group-text">氏名</span>
            </div>
            <input type="text" class="form-control" v-model="name"> 
        </div>

        <div class="input-group">
            <div class="input-group-append">
                <span class="input-group-text">フリガナ</span>
            </div>
            <input type="text" class="form-control" v-model="name_furi"> 
        </div>

        <div class="input-group">
            <div class="input-group-append">
                <span class="input-group-text">出欠</span>
            </div>
            <input type="checkbox" class="form-control" v-model="attend"> 
        </div>
        
        <div class="input-group">
            <div class="input-group-append">
                <span class="input-group-text">住所</span>
            </div>
            <input type="text" class="form-control" v-model="address"> 
        </div>

        <div class="input-group">
            <div class="input-group-append">
                <span class="input-group-text">メールアドレス</span>
            </div>
            <input type="text" class="form-control" v-model="email"> 
        </div>

        <div class="input-group">
            <div class="input-group-append">
                <span class="input-group-text">電話番号</span>
            </div>
            <input type="text" class="form-control" v-model="tel"> 
        </div>

        <div class="input-group">
            <div class="input-group-append">
                <span class="input-group-text">アレルギーなど</span>
            </div>
            <input type="text" class="form-control" v-model="allergy"> 
        </div>

        <div class="input-group">
            <div class="input-group-append">
                <span class="input-group-text">備考</span>
            </div>
            <input type="text" class="form-control" v-model="other"> 
        </div>

        <p>
            <button type="button" class="btn btn-primary" v-on:click="createAttend">送信</button>
        </p>
    </div>
</template>

<script>
import axios from 'axios';

export default {
    data: function() {
        return {
            name: "",
            name_furi: "",
            attend: false,
            address: "",
            email: "",
            tel: "",
            allergy: "",
            other: ""
        }
    },
    methods: {
        createAttend: function() {
            axios.defaults.headers['X-CSRF-TOKEN'] = $('meta[name=csrf-token]').attr('content');
            axios.defaults.headers['content-type'] = 'application/json';

            axios.post('/attendances', {attendance: {name: this.name, name_furi: this.name_furi, attend: this.attend, address: this.address, email: this.email, tel: this.tel, other: this.other}}).then((response) => {
                console.log(response);
            }, (error) => {
                console.log(error);
            })
        }
    }
}
</script>