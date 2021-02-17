<script>

    import Header from '../components/Header.svelte';
    import Footer from '../components/Footer.svelte';

</script>

<!-- Body main wrapper start -->
<div class="wrapper">
    <Header/>
    <!-- Start of Content -->
    <slot></slot>
    <!-- End of Content -->
    <Footer/>
</div>
<!-- Body main wrapper end -->