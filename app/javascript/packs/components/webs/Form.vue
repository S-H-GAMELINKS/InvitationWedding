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
            <input type="checkbox" class="form-control" v-model="presence"> 
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
            <input type="text" class="form-control" v-model="mail"> 
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
            <input type="text" class="form-control" v-model="content"> 
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
            presence: false,
            address: "",
            mail: "",
            tel: "",
            allergy: "",
            content: ""
        }
    },
    methods: {
        createAttend: function() {
            axios.defaults.headers['X-CSRF-TOKEN'] = $('meta[name=csrf-token]').attr('content');
            axios.defaults.headers['content-type'] = 'application/json';

            axios.post('/attendances', {attendance: {name: this.name, name_furi: this.name_furi, presence: this.presence, address: this.address, mail: this.mail, tel: this.tel, mail: this.mail, content: this.content}}).then((response) => {
                console.log(response);
            }, (error) => {
                console.log(error);
            })
        }
    }
}
</script>